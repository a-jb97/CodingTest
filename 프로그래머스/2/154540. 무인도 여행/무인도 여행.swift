import Foundation

func solution(_ maps: [String]) -> [Int] {
    let board = maps.map { Array($0) }
    let rows = board.count
    let cols = board[0].count
    
    var visited = Array(
        repeating: Array(repeating: false, count: cols),
        count: rows
    )
    
    let dr = [-1, 1, 0, 0]
    let dc = [0, 0, -1, 1]
    
    var result: [Int] = []
    
    for r in 0..<rows {
        for c in 0..<cols {
            if board[r][c] == "X" || visited[r][c] {
                continue
            }
            
            var queue: [(Int, Int)] = [(r, c)]
            var index = 0
            
            visited[r][c] = true
            
            var sum = Int(String(board[r][c]))!
            
            while index < queue.count {
                let (cr, cc) = queue[index]
                index += 1
                
                for i in 0..<4 {
                    let nr = cr + dr[i]
                    let nc = cc + dc[i]
                    
                    if nr < 0 || nr >= rows ||
                       nc < 0 || nc >= cols {
                        continue
                    }
                    
                    if visited[nr][nc] || board[nr][nc] == "X" {
                        continue
                    }
                    
                    visited[nr][nc] = true
                    sum += Int(String(board[nr][nc]))!
                    queue.append((nr, nc))
                }
            }
            
            result.append(sum)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}