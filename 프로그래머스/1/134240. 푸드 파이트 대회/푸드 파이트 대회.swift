import Foundation

func solution(_ food:[Int]) -> String {
    var left = ""

    for i in 1..<food.count {
        left += String(repeating: String(i), count: food[i] / 2)
    }

    return left + "0" + left.reversed()
}