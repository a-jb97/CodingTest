import Foundation

func solution(_ arr:[String]) -> String {
    var result: String = ""
    
    for i in 0...arr.count - 1 {
        result += arr[i]
    }
    
    return result
}