import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result: [[Int]] = []

    func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int) {
        if n == 1 {
            result.append([start, end])

            return
        }

        hanoi(n - 1, start, end, mid)

        result.append([start, end])

        hanoi(n - 1, mid, start, end)
    }

    hanoi(n, 1, 2, 3)

    return result
}