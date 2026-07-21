import Foundation

func solution(_ s:String) -> Int {
    let words = [
        "zero", "one", "two", "three", "four",
        "five", "six", "seven", "eight", "nine"
    ]

    var result = s

    for (number, word) in words.enumerated() {
        result = result.replacingOccurrences(
            of: word,
            with: String(number)
        )
    }

    return Int(result)!
}