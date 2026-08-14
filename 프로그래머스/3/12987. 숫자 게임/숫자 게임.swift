import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    let a = A.sorted()
    let b = B.sorted()
    
    var aIndex = 0
    var bIndex = 0
    var answer = 0
    
    while aIndex < a.count && bIndex < b.count {
        if b[bIndex] > a[aIndex] {
            answer += 1
            aIndex += 1
            bIndex += 1
            
        } else {
            bIndex += 1
        }
    }
    
    return answer
}