import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    
    for num in arr {
        for _ in 1...num {
            result.append(num)
        }
    }
    
    return result
}