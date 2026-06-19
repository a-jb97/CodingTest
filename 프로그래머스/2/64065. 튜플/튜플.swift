import Foundation

func solution(_ s:String) -> [Int] {
    let trimmed = String(s.dropFirst(2).dropLast(2))
    let sets = trimmed
        .components(separatedBy: "},{")
        .map { $0.split(separator: ",").map { Int($0)! } }
        .sorted { $0.count < $1.count }

    var result: [Int] = []
    var seen = Set<Int>()

    for set in sets {
        for num in set {
            if !seen.contains(num) {
                result.append(num)

                seen.insert(num)
            }
        }
    }

    return result
}