import Foundation

func solution(_ topping:[Int]) -> Int {
    var result = 0
    var left = Set<Int>()
    var right: [Int: Int] = [:]

    for t in topping {
        right[t, default: 0] += 1
    }

    for i in 0..<topping.count - 1 {
        let t = topping[i]

        left.insert(t)

        if let count = right[t] {
            if count == 1 {
                right.removeValue(forKey: t)

            } else {
                right[t] = count - 1
            }
        }

        if left.count == right.count {
            result += 1
        }
    }

    return result
}