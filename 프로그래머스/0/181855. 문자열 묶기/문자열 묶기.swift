import Foundation

func solution(_ strArr:[String]) -> Int {
    var dict: [Int: Int] = [:]
    
    for str in strArr {
        let length = str.count
        dict[length, default: 0] += 1
    }
    
    return dict.values.max() ?? 0
}