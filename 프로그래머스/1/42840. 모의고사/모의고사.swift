import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let pattern1 = [1, 2, 3, 4, 5]
    let pattern2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let pattern3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score: [Int] = [0, 0, 0]
    var result: [Int] = []
    
    for i in 0..<answers.count {
        if pattern1[i % pattern1.count] == answers[i] {
            score[0] += 1
        }
        
        if pattern2[i % pattern2.count] == answers[i] {
            score[1] += 1
        }
        
        if pattern3[i % pattern3.count] == answers[i] {
            score[2] += 1
        }
    }
    
    for i in 0..<score.count {
        if score[i] == score.max()! {
            result.append(i + 1)
        }
    }
    
    return result
}