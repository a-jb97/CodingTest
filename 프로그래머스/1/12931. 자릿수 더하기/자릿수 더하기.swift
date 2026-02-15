import Foundation

func solution(_ n:Int) -> Int
{
    var answer: Int = 0
    var inputN = n
    var lengthN = String(n).count - 1
    
    if lengthN == 0 {
        return n
    } else {
        for _ in 0...lengthN {
            let powLengthN = pow(10.0, Double(lengthN))
            let a = inputN / Int(powLengthN)
            
            answer += a
            
            inputN -= (a * Int(powLengthN))
            lengthN -= 1
        }
    }
    
    return answer
}