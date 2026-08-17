import Foundation

func solution(_ gems: [String]) -> [Int] {
    let totalKinds = Set(gems).count
    
    var counts: [String: Int] = [:]
    
    var left = 0
    var right = 0
    
    var bestLeft = 0
    var bestRight = gems.count - 1
    var bestLength = gems.count
    
    while right < gems.count {
        counts[gems[right], default: 0] += 1
        
        while counts.count == totalKinds {
            let currentLength = right - left + 1
            
            if currentLength < bestLength {
                bestLength = currentLength
                bestLeft = left
                bestRight = right
            }
            
            let leftGem = gems[left]
            counts[leftGem]! -= 1
            
            if counts[leftGem] == 0 {
                counts.removeValue(forKey: leftGem)
            }
            
            left += 1
        }
        
        right += 1
    }
    
    return [bestLeft + 1, bestRight + 1]
}