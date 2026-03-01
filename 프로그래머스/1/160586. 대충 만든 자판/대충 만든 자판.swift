import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var minCount: [Character: Int] = [:]
    var result: [Int] = []
    
    for key in keymap {
        for (i, char) in key.enumerated() {
            let count = i + 1
            
            if let existing = minCount[char] {
                minCount[char] = min(existing, count)
            } else {
                minCount[char] = count
            }
        }
    }
    
    for target in targets {
        var sum = 0
        var isPossible = true
        
        for char in target {
            if let count = minCount[char] {
                sum += count
            } else {
                isPossible = false
                break
            }
        }
        
        result.append(isPossible ? sum : -1)
    }
    
    return result
}