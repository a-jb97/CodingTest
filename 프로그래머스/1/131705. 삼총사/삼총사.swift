import Foundation

func solution(_ number:[Int]) -> Int {
    var result = 0
    let n = number.count
    
    for i in 0..<n-2 {
        for j in i+1..<n-1 {
            for k in j+1..<n {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    
    return result
}