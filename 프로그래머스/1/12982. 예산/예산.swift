import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var currentSumBudget = 0
    var result = 0
    
    for requestBudget in d.sorted() {
        if (currentSumBudget + requestBudget) <= budget {
            currentSumBudget += requestBudget
            result += 1
        }
    }
    
    return result
}