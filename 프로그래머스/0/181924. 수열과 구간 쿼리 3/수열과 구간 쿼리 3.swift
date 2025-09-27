import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for queriesArr in queries {
        var query = queriesArr
        let temp0 = result[query[0]]
        
        result[query[0]] = result[query[1]]
        result[query[1]] = temp0
    }
    
    return result
}