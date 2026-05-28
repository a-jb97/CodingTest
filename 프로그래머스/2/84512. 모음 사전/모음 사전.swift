import Foundation

func solution(_ word:String) -> Int {
    let vowels = ["A": 0, "E": 1, "I": 2, "O": 3, "U": 4]
    let weights = [781, 156, 31, 6, 1]
    var result = 0

    for (i, ch) in word.enumerated() {
        let index = vowels[String(ch)]!

        result += index * weights[i] + 1
    }

    return result
}