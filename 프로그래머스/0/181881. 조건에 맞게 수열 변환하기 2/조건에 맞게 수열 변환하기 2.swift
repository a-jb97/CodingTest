import Foundation

func solution(_ arr:[Int]) -> Int {
    var repeatCount = 0
    var currentArr: [Int] = arr
    var repeatArr: [Int] = []
    
    while currentArr != repeatArr {
        for i in 0..<currentArr.count {
            if currentArr[i] >= 50 && currentArr[i] % 2 == 0 {
                repeatArr.append(currentArr[i] / 2)
            } else if currentArr[i] < 50 && currentArr[i] % 2 == 1 {
                repeatArr.append((currentArr[i] * 2) + 1)
            } else {
                repeatArr.append(currentArr[i])
            }
        }
        
        if currentArr == repeatArr {
            break
        } else {
            currentArr = repeatArr
            repeatArr = []
            
            repeatCount += 1
        }
    }
    
    return repeatCount
}