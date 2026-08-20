import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var result = 0
    
    func dfs(_ current: Int) {
        visited[current] = true
        
        for next in 0..<n {
            if computers[current][next] == 1 && !visited[next] {
                dfs(next)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            result += 1
        }
    }
    
    return result
}