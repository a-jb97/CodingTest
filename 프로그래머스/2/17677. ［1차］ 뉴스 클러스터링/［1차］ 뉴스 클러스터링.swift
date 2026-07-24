import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    func makeMultiset(_ string: String) -> [String: Int] {
        let characters = Array(string.uppercased())
        var multiset: [String: Int] = [:]

        for index in 0..<(characters.count - 1) {
            guard
                let first = characters[index].asciiValue,
                let second = characters[index + 1].asciiValue,
                (65...90).contains(first),
                (65...90).contains(second)
            else {
                continue
            }

            let pair = String(characters[index...index + 1])
            multiset[pair, default: 0] += 1
        }

        return multiset
    }

    let firstSet = makeMultiset(str1)
    let secondSet = makeMultiset(str2)
    let allKeys = Set(firstSet.keys).union(secondSet.keys)

    var intersectionCount = 0
    var unionCount = 0

    for key in allKeys {
        let firstCount = firstSet[key, default: 0]
        let secondCount = secondSet[key, default: 0]

        intersectionCount += min(firstCount, secondCount)
        unionCount += max(firstCount, secondCount)
    }

    guard unionCount > 0 else {
        return 65_536
    }

    return intersectionCount * 65_536 / unionCount
}