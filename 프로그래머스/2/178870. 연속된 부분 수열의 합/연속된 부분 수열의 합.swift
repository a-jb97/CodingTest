import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var left = 0
    var right = 0
    var sum = 0
    var result = [0, sequence.count - 1]
    
    while right < sequence.count {
        sum += sequence[right]
        
        while sum > k {
            sum -= sequence[left]
            
            left += 1
        }
        
        if sum == k {
            if right - left < result[1] - result[0] {
                result = [left, right]
            }
        }
        
        right += 1
    }
    
    return result
}