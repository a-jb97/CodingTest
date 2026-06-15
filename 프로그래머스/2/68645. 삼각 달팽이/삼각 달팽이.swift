import Foundation

func solution(_ n:Int) -> [Int] {
    var board = Array(repeating: Array(repeating: 0, count: n), count: n)
    let dx = [1, 0, -1]
    let dy = [0, 1, -1]
    var x = -1
    var y = 0
    var num = 1
    var dir = 0
    
    for length in stride(from: n, through: 1, by: -1) {
        for _ in 0..<length {
            x += dx[dir]
            y += dy[dir]
            
            board[x][y] = num

            num += 1
        }

        dir = (dir + 1) % 3
    }

    return board.flatMap { row in
        row.filter { $0 != 0 }
    }
}