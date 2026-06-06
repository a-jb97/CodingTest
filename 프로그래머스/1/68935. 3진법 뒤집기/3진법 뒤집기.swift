import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var reversedTernary = ""

    while n > 0 {
        reversedTernary += String(n % 3)

        n /= 3
    }

    return Int(reversedTernary, radix: 3)!
}