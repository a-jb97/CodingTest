import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    var result: [Int64] = []

    for number in numbers {
        if number % 2 == 0 {
            result.append(number + 1)

        } else {
            var temp = number
            var count = 0

            while temp % 2 == 1 {
                count += 1
                temp /= 2
            }

            result.append(number + (1 << (count - 1)))
        }
    }

    return result
}