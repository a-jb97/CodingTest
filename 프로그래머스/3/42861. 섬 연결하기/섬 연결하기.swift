import Foundation

func solution(_ n: Int, _ costs: [[Int]]) -> Int {
    var parent = Array(0..<n)
    
    func find(_ x: Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x])
        }
        
        return parent[x]
    }
    
    func union(_ a: Int, _ b: Int) -> Bool {
        let rootA = find(a)
        let rootB = find(b)
        
        if rootA == rootB {
            return false
        }
        
        parent[rootB] = rootA
        return true
    }
    
    let sortedCosts = costs.sorted {
        $0[2] < $1[2]
    }
    
    var result = 0
    var edgeCount = 0
    
    for cost in sortedCosts {
        let a = cost[0]
        let b = cost[1]
        let price = cost[2]
        
        if union(a, b) {
            result += price
            edgeCount += 1
            
            if edgeCount == n - 1 {
                break
            }
        }
    }
    
    return result
}