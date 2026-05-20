import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    if x == y { return 0 }

    var visited = Array(repeating: false, count: y + 1)
    var queue: [(Int, Int)] = [(x, 0)]
    var index = 0

    visited[x] = true

    while index < queue.count {
        let (current, count) = queue[index]

        index += 1

        let nextNumbers = [
            current + n,
            current * 2,
            current * 3
        ]

        for next in nextNumbers {
            if next == y {
                return count + 1
            }

            if next <= y && !visited[next] {
                visited[next] = true

                queue.append((next, count + 1))
            }
        }
    }

    return -1
}