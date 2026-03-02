import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var scoreDict: [String : Int] = [:]
    var result: [Int] = []
    
    for i in 0..<name.count {
        scoreDict[name[i]] = yearning[i]
    }
    
    for people in photo {
        var total = 0
        
        for person in people {
            total += scoreDict[person] ?? 0
        }
        
        result.append(total)
    }
    
    return result
}