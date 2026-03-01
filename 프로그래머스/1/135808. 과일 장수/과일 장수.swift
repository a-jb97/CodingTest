import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScore = score.sorted(by: >)
    var result = 0
    
    for i in stride(from: 0, to: sortedScore.count, by: m) {
        if i + m <= sortedScore.count {
            result += sortedScore[i + m - 1] * m
        }
    }
    
    return result
}