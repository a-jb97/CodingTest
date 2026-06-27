import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var dp = board
    var maxLength = 0
    let row = board.count
    let col = board[0].count

    for i in 0..<row {
        maxLength = max(maxLength, dp[i][0])
    }

    for j in 0..<col {
        maxLength = max(maxLength, dp[0][j])
    }

    guard row > 1 && col > 1 else {
        return maxLength
    }

    for i in 1..<row {
        for j in 1..<col {
            if board[i][j] == 1 {
                dp[i][j] = min(dp[i-1][j],min(dp[i][j-1], dp[i-1][j-1])) + 1

                maxLength = max(maxLength, dp[i][j])
            }
        }
    }

    return maxLength * maxLength
}