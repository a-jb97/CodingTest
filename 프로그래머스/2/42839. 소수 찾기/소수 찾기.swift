import Foundation

func solution(_ numbers:String) -> Int {
    let nums = Array(numbers)
    var visited = Array(repeating: false, count: nums.count)
    var candidates = Set<Int>()

    func dfs(_ current: String) {
        if !current.isEmpty {
            candidates.insert(Int(current)!)
        }

        for i in 0..<nums.count {
            if visited[i] { continue }
            visited[i] = true
            dfs(current + String(nums[i]))
            visited[i] = false
        }
    }

    dfs("")

    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }

        if n == 2 { return true }

        let limit = Int(Double(n).squareRoot())

        if limit >= 2 {
            for i in 2...limit {
                if n % i == 0 {
                    return false
                }
            }
        }

        return true
    }

    return candidates.filter { isPrime($0) }.count
}