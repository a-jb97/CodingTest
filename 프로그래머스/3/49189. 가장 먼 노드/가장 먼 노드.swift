import Foundation

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n + 1)

    for e in edge {
        let a = e[0]
        let b = e[1]

        graph[a].append(b)
        graph[b].append(a)
    }

    var distance = Array(repeating: -1, count: n + 1)
    distance[1] = 0

    var queue = [Int]()
    var index = 0

    queue.append(1)

    while index < queue.count {
        let current = queue[index]
        index += 1

        for next in graph[current] {
            if distance[next] == -1 {
                distance[next] = distance[current] + 1
                queue.append(next)
            }
        }
    }

    let maxDistance = distance.max()!

    return distance.filter { $0 == maxDistance }.count
}