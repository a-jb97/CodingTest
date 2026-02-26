import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var bucket: [Int] = []
    var popDolls = 0
    
    for move in moves {
        for i in 0..<board.count {
            if board[i][move - 1] != 0 {
                bucket.append(board[i][move - 1])
                board[i][move - 1] = 0
                
                break
            }
        }
        
        if bucket.count >= 2 && bucket[bucket.count - 1] == bucket[bucket.count - 2] {
            bucket.removeLast(2)
            popDolls += 2
        }
    }
    
    return popDolls
}