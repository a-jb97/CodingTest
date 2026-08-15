import Foundation

func solution(_ n: Int, _ times: [Int]) -> Int64 {
    var left: Int64 = 1
    var right: Int64 = Int64(times.max()!) * Int64(n)
    
    while left <= right {
        let mid = (left + right) / 2
        
        var count: Int64 = 0
        
        for time in times {
            count += mid / Int64(time)
            
            if count >= Int64(n) {
                break
            }
        }
        
        if count >= Int64(n) {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return left
}