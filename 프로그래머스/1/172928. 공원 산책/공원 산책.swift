import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let board = park.map { Array($0) }
    let h = board.count
    let w = board[0].count
    var r = 0
    var c = 0

    for i in 0..<h {
        for j in 0..<w {
            if board[i][j] == "S" {
                r = i
                c = j
            }
        }
    }

    for route in routes {
        let parts = route.split(separator: " ")
        let op = parts[0]
        let n = Int(parts[1]) ?? 0
        var dr = 0
        var dc = 0

        switch op {
        case "N":
            dr = -1
        case "S":
            dr = 1
        case "W":
            dc = -1
        case "E":
            dc = 1
        default:
            continue
        }

        var nr = r
        var nc = c
        var isPossible = true

        for _ in 0..<n {
            nr += dr
            nc += dc

            if nr < 0 || nr >= h || nc < 0 || nc >= w {
                isPossible = false

                break
            }

            if board[nr][nc] == "X" {
                isPossible = false

                break
            }
        }

        if isPossible {
            r = nr
            c = nc
        }
    }
    
    return [r, c]
}