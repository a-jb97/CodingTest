import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    var stack: [Int] = []

    for i in 0..<numbers.count {

        while let last = stack.last, numbers[last] < numbers[i] {

            result[last] = numbers[i]

            stack.removeLast()

        }

        stack.append(i)

    }

    return result
}