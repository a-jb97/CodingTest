import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var hof: [Int] = []
    var result: [Int] = []
    
    for i in score {
        hof.append(i)
        hof.sort(by: >)
        
        if hof.count > k {
            hof.removeLast()
        }
        
        result.append(hof.last!)
    }
    
    return result
}