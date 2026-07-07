import Foundation

func solution(_ dirs:String) -> Int {
    var x = 0
    var y = 0
    var visited = Set<String>()
    let move: [Character: (Int, Int)] = [
        "U": (0, 1),
        "D": (0, -1),
        "L": (-1, 0),
        "R": (1, 0)
    ]

    for dir in dirs {
        guard let (dx, dy) = move[dir] else { continue }
        
        let nx = x + dx
        let ny = y + dy

        if nx < -5 || nx > 5 || ny < -5 || ny > 5 {
            continue
        }

        let path1 = "\(x),\(y):\(nx),\(ny)"
        let path2 = "\(nx),\(ny):\(x),\(y)"

        visited.insert(min(path1, path2))

        x = nx
        y = ny
    }

    return visited.count
}