import Foundation

func solution(_ ingredient:[Int]) -> Int {
    let correctSequence = [1, 2, 3, 1]
    var currentSequence: [Int] = []
    var result = 0
    
    for i in ingredient {
        currentSequence.append(i)
        
        if currentSequence.count >= 4 {
            if Array(currentSequence.suffix(4)) == correctSequence {
                currentSequence.removeLast(4)
                result += 1
            }
        }
    }
    
    return result
}