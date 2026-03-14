import Foundation

func solution(_ myString:String) -> [Int] {
    var strCount = 0
    var result: [Int] = []
    
    for str in myString {
        if str == "x" {
            result.append(strCount)
            strCount = 0
        } else {
            strCount += 1
        }
    }
    
    result.append(strCount)
    
    return result
}