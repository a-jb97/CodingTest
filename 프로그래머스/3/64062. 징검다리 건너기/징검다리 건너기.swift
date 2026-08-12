import Foundation

func solution(_ stones: [Int], _ k: Int) -> Int {
    var left = 1
    var right = stones.max()!
    
    while left <= right {
        let mid = (left + right) / 2
        
        var count = 0
        var canCross = true
        
        for stone in stones {
            if stone < mid {
                count += 1
                
                if count >= k {
                    canCross = false
                    break
                }
            } else {
                count = 0
            }
        }
        
        if canCross {
            left = mid + 1
            
        } else {
            right = mid - 1
        }
    }
    
    return right
}