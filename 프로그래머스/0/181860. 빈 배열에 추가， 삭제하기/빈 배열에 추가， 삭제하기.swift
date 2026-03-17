import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<flag.count {
        if flag[i] == true {
            for _ in 1...(arr[i] * 2) {
                result.append(arr[i])
            }
        } else {
            result.removeLast(arr[i])
        }
    }
    
    return result
}