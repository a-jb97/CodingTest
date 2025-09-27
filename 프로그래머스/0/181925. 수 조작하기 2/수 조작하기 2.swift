import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    
    for i in 1...numLog.count - 1 {
        if numLog[i] == numLog[i - 1] + 1 {
            result += "w"
        } else if numLog[i] == numLog[i - 1] - 1 {
            result += "s"
        } else if numLog[i] == numLog[i - 1] + 10 {
            result += "d"
        } else if numLog[i] == numLog[i - 1] - 10 {
            result += "a"
        }
    }
    
    return result
}