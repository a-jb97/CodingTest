import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    var maxCount = 0
    
    func dfs(currentFatigue: Int, count: Int) {
        maxCount = max(maxCount, count)
        
        for i in 0..<dungeons.count {
            if !visited[i] && currentFatigue >= dungeons[i][0] {
                visited[i] = true
                dfs(currentFatigue: currentFatigue - dungeons[i][1], count: count + 1)
                visited[i] = false
            }
        }
    }
    
    dfs(currentFatigue: k, count: 0)
    
    return maxCount
}