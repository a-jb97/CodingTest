import Foundation

func solution(_ board: [String]) -> Int {
    let board = board.map { Array($0) }
    var oCount = 0
    var xCount = 0

    for row in board {
        for cell in row {
            if cell == "O" {
                oCount += 1
            } else if cell == "X" {
                xCount += 1
            }
        }
    }

    if !(oCount == xCount || oCount == xCount + 1) {
        return 0
    }

    func isWin(_ target: Character) -> Bool {
        for i in 0..<3 {
            if board[i][0] == target &&
               board[i][1] == target &&
               board[i][2] == target {
                return true
            }
        }

        for j in 0..<3 {
            if board[0][j] == target &&
               board[1][j] == target &&
               board[2][j] == target {
                return true
            }
        }

        if board[0][0] == target &&
           board[1][1] == target &&
           board[2][2] == target {
            return true
        }

        if board[0][2] == target &&
           board[1][1] == target &&
           board[2][0] == target {
            return true
        }

        return false
    }

    let oWin = isWin("O")
    let xWin = isWin("X")

    if oWin && xWin {
        return 0
    }

    if oWin && oCount != xCount + 1 {
        return 0
    }

    if xWin && oCount != xCount {
        return 0
    }

    return 1
}