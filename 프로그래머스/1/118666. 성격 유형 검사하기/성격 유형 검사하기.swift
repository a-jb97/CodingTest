import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var scores: [Character : Int] = [
        "R": 0, "T": 0,
        "C": 0, "F": 0,
        "J": 0, "M": 0,
        "A": 0, "N": 0
    ]
    var result = ""
    
    for i in 0..<survey.count {
        let pair = Array(survey[i])
        let choice = choices[i]
        
        let score = abs(choice - 4)
        
        if choice < 4 {
            scores[pair[0], default: 0] += score
        } else if choice > 4 {
            scores[pair[1], default: 0] += score
        }
    }
    
    result += scores["R"]! >= scores["T"]! ? "R" : "T"
    result += scores["C"]! >= scores["F"]! ? "C" : "F"
    result += scores["J"]! >= scores["M"]! ? "J" : "M"
    result += scores["A"]! >= scores["N"]! ? "A" : "N"
    
    return result
}