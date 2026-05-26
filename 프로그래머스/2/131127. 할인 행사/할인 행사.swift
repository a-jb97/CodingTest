import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var target: [String: Int] = [:]
    var result = 0

    for i in 0..<want.count {
        target[want[i]] = number[i]
    }

    for start in 0...(discount.count - 10) {
        var current: [String: Int] = [:]

        for i in start..<start + 10 {
            current[discount[i], default: 0] += 1
        }

        if current == target {
            result += 1
        }
    }
    
    return result
}