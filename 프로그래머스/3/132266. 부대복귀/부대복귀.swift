import Foundation

func solution(
    _ n: Int,
    _ roads: [[Int]],
    _ sources: [Int],
    _ destination: Int
) -> [Int] {
    
    var graph = Array(repeating: [Int](), count: n + 1)
    
    for road in roads {
        let a = road[0]
        let b = road[1]
        
        graph[a].append(b)
        graph[b].append(a)
    }
    
    var distance = Array(repeating: -1, count: n + 1)
    var queue = [Int]()
    var index = 0
    
    queue.append(destination)
    distance[destination] = 0
    
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
    
    return sources.map { distance[$0] }
}