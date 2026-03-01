import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<numbers.count {
        for j in (i + 1)..<numbers.count {
            let sumIJ = numbers[i] + numbers[j]
            
            if !result.contains(sumIJ) {
                result.append(sumIJ)
            }
        }
    }
    
    return result.sorted()
}