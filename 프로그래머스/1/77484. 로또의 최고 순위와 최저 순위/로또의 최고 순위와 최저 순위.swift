import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var result = [7, 7]
    
    for myNum in lottos {
        if win_nums.contains(myNum) {
            result[0] -= 1
            result[1] -= 1
        }
        
        if myNum == 0 {
            result[0] -= 1
        }
    }
    
    if result[1] > 6 {
        result[1] = 6
    }
    
    if result[0] > 6 {
        result[0] = 6
    }
    
    return result
}