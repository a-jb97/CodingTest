import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = [n]
    var x = n
    
    while x != 1 {
        if x % 2 == 0 {
            x /= 2
            result.append(x)
        } else if x % 2 == 1 {
            x = 3 * x + 1
            result.append(x)
        }
    }
    
    return result
}