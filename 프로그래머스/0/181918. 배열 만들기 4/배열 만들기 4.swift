import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk: [Int] = []
    var i = 0
    
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else {
            if let lastStk = stk.last {
                if lastStk < arr[i] {
                    stk.append(arr[i])
                    i += 1
                } else if lastStk >= arr[i] {
                    stk.removeLast()
                }
            } else {
                
            }
        }
    }
    
    return stk
}