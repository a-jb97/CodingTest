import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var result = Int.max

    for cut in 0..<wires.count {

        var graph = Array(repeating: [Int](), count: n + 1)

        for i in 0..<wires.count {

            if i == cut { continue }

            let a = wires[i][0]

            let b = wires[i][1]

            graph[a].append(b)

            graph[b].append(a)

        }

        var visited = Array(repeating: false, count: n + 1)

        func dfs(_ node: Int) -> Int {

            visited[node] = true

            var count = 1

            for next in graph[node] {

                if !visited[next] {

                    count += dfs(next)

                }

            }

            return count

        }

        let count = dfs(1)

        result = min(result, abs(count - (n - count)))

    }

    return result
}