import Foundation

func solution(_ s:String) -> [Int] {
    var lastIndex: [Character: Int] = [:]
    var result: [Int] = []
    
    for (i, ch) in s.enumerated() {
        if let prev = lastIndex[ch] {
            result.append(i - prev)
        } else {
            result.append(-1)
        }
        
        lastIndex[ch] = i
    }
    
    return result
}