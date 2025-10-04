import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let codeArr = Array(code)
    var result: String = ""
    
    for i in 0...codeArr.count - 1 {
        if i % q == r {
            result.append(codeArr[i])
        }
    }
    
    return result
}