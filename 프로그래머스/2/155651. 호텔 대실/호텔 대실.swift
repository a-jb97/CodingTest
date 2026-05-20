import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var timeline = Array(repeating: 0, count: 24 * 60 + 10 + 1)

    func toMinutes(_ time: String) -> Int {
        let parts = time.split(separator: ":").map { Int($0)! }

        return parts[0] * 60 + parts[1]
    }

    for book in book_time {
        let start = toMinutes(book[0])
        let end = toMinutes(book[1]) + 10

        timeline[start] += 1
        timeline[end] -= 1
    }
    
    var current = 0
    var answer = 0

    for count in timeline {
        current += count

        answer = max(answer, current)
    }

    return answer
}