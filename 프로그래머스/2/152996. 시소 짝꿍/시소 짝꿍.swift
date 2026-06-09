import Foundation

func solution(_ weights:[Int]) -> Int64 {
    var dict: [Int: Int64] = [:]
    var result: Int64 = 0

    for w in weights {
        dict[w, default: 0] += 1
    }

    for w in dict.keys {
        let count = dict[w]!

        result += count * (count - 1) / 2

        if w * 3 % 2 == 0 {
            result += count * dict[w * 3 / 2, default: 0]
        }

        result += count * dict[w * 2, default: 0]

        if w * 4 % 3 == 0 {
            result += count * dict[w * 4 / 3, default: 0]
        }
    }
    
    return result
}