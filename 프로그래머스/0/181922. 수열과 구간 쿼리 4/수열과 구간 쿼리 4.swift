import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var rangeArr: [Int] = arr
    
    for query in queries {
        for i in query[0]...query[1] {
            if i % query[2] == 0 {
                rangeArr[i] += 1
            }
        }
    }
    
    return rangeArr
}