import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let arrStr1 = Array(str1)
    let arrStr2 = Array(str2)
    var result: String = ""
    
    for i in 0...(str1.count - 1) {
        result += "\(String(arrStr1[i]))\(String(arrStr2[i]))"
    }
    
    return result
}