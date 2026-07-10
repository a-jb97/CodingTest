import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var graph = Array(repeating: [(Int, Int)](), count: N + 1)

    for r in road {
        let a = r[0]
        let b = r[1]
        let c = r[2]

        graph[a].append((b, c))
        graph[b].append((a, c))
    }

    let INF = Int.max
    var dist = Array(repeating: INF, count: N + 1)

    dist[1] = 0

    var queue: [(node: Int, cost: Int)] = [(1, 0)]

    while !queue.isEmpty {
        queue.sort { $0.cost < $1.cost }
        
        let current = queue.removeFirst()

        if current.cost > dist[current.node] {
            continue
        }

        for (next, weight) in graph[current.node] {
            let newCost = current.cost + weight

            if newCost < dist[next] {
                dist[next] = newCost
            
                queue.append((next, newCost))
            }
        }
    }

    return dist.filter { $0 <= k }.count
}