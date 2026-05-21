import Foundation

func solution(_ board: [String]) -> Int {
    let n = board.count
    let m = board[0].count
    let map = board.map { Array($0) }

    var start = (0, 0)

    for r in 0..<n {
        for c in 0..<m {
            if map[r][c] == "R" {
                start = (r, c)
            }
        }
    }

    let dr = [-1, 1, 0, 0]
    let dc = [0, 0, -1, 1]

    var visited = Array(
        repeating: Array(repeating: false, count: m),
        count: n
    )

    var queue: [(Int, Int, Int)] = []
    var index = 0

    queue.append((start.0, start.1, 0))
    visited[start.0][start.1] = true

    while index < queue.count {
        let (r, c, count) = queue[index]
        index += 1

        if map[r][c] == "G" {
            return count
        }

        for i in 0..<4 {
            var nr = r
            var nc = c

            while true {
                let nextR = nr + dr[i]
                let nextC = nc + dc[i]

                if nextR < 0 || nextR >= n || nextC < 0 || nextC >= m {
                    break
                }

                if map[nextR][nextC] == "D" {
                    break
                }

                nr = nextR
                nc = nextC
            }

            if !visited[nr][nc] {
                visited[nr][nc] = true
                queue.append((nr, nc, count + 1))
            }
        }
    }

    return -1
}