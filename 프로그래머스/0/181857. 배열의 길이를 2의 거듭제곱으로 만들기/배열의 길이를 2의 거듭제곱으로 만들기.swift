import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    var length = 1
    
    while length < arr.count {
        length *= 2
    }
    
    while result.count < length {
        result.append(0)
    }
    
    return result
}