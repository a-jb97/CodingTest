import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted {
        if $0[0] == $1[0] {
            return $0[1] < $1[1]
        }
        return $0[0] < $1[0]
    }
    
    var visited = Array(repeating: false, count: tickets.count)
    var path = ["ICN"]
    var result: [String] = []
    
    func dfs(_ current: String) -> Bool {
        if path.count == tickets.count + 1 {
            result = path
            return true
        }
        
        for i in 0..<tickets.count {
            if visited[i] {
                continue
            }
            
            if tickets[i][0] != current {
                continue
            }
            
            visited[i] = true
            path.append(tickets[i][1])
            
            if dfs(tickets[i][1]) {
                return true
            }
            
            path.removeLast()
            visited[i] = false
        }
        
        return false
    }
    
    _ = dfs("ICN")
    
    return result
}