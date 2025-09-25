import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
 
    if n % 2 == 1 {
        for i in 1...n {
            if i % 2 == 1 {
                result += i
            }
        }
    } else if n % 2 == 0 {
        for i in 1...n {
            if i % 2 == 0 {
                result += Int(pow(Double(i), 2.0))
            }
        }
    }
    
    return result
}