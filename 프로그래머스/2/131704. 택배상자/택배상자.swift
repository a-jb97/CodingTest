import Foundation

func solution(_ order:[Int]) -> Int {
    var stack: [Int] = []
    var idx = 0
    var result = 0

    for box in 1...order.count {
        stack.append(box)

        while !stack.isEmpty &&
              idx < order.count &&
              stack.last! == order[idx] {
            stack.removeLast()
            idx += 1
            result += 1
        }
    }

    return result
}