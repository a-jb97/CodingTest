import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var myString = my_string
    var splitStringArr: [String] = []
    var result: String = ""
    let startIndex = myString.startIndex
    let endIndex = myString.index(myString.startIndex, offsetBy: m)
    
    for _ in 1...my_string.count / m {
        splitStringArr.append(String(myString[startIndex..<endIndex]))
        myString.removeSubrange(startIndex..<endIndex)
    }
    
    for i in 0...splitStringArr.count - 1 {
        let index_c = c - 1
        let char = Array(splitStringArr[i])[index_c]
        result.append(char)
    }
    
    return result
}