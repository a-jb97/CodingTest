import Foundation

func solution(_ maps:[String]) -> Int {
    let rows = maps.count
    let cols = maps[0].count

    let map = maps.map { Array($0) }

    var start = (0, 0)
    var lever = (0, 0)

    for i in 0..<rows {
        for j in 0..<cols {
            if map[i][j] == "S" {
                start = (i, j)
            } else if map[i][j] == "L" {
                lever = (i, j)
            }
        }
    }

    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    func bfs(_ start: (Int, Int), _ target: Character) -> Int {
        var visited = Array(
            repeating: Array(repeating: false, count: cols),
            count: rows
        )

        var queue: [(Int, Int, Int)] = []
        var index = 0

        queue.append((start.0, start.1, 0))
        visited[start.0][start.1] = true

        while index < queue.count {
            let (x, y, dist) = queue[index]
            index += 1

            if map[x][y] == target {
                return dist
            }

            for k in 0..<4 {
                let nx = x + dx[k]
                let ny = y + dy[k]

                if nx < 0 || nx >= rows || ny < 0 || ny >= cols {
                    continue
                }

                if visited[nx][ny] {
                    continue
                }

                if map[nx][ny] == "X" {
                    continue
                }

                visited[nx][ny] = true
                queue.append((nx, ny, dist + 1))
            }
        }

        return -1
    }

    let sToL = bfs(start, "L")
    if sToL == -1 {
        return -1
    }

    let lToE = bfs(lever, "E")
    if lToE == -1 {
        return -1
    }

    return sToL + lToE
}