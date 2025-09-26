import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var apArray: [Int] = []
    var plusA = a
    var result = 0
    
    for i in 0...included.count - 1 {
        if i == 0 {
            apArray.append(a)
        } else {
            apArray.append(plusA + d)
            plusA += d
        }
        
        result += included[i] ? apArray[i] : 0
    }
    
    return result
}