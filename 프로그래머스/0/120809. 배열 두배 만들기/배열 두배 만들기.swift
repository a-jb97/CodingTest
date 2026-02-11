import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var doubleNumbers = [Int]()
    for number in numbers {
        doubleNumbers.append(number * 2)
    }
    return doubleNumbers
}