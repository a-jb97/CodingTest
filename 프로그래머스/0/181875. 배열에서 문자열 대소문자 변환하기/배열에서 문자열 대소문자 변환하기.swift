import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result: [String] = []
    
    for i in 0..<strArr.count {
        if i % 2 == 1 {
            result.append(strArr[i].uppercased())
        } else {
            result.append(strArr[i].lowercased())
        }
    }
    
    return result
}