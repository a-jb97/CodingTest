import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var rangeArr: [Int] = []
    var result: [Int] = []
    
    for query in queries {
        for i in query[0]...query[1] {        
            rangeArr.append(arr[i])
        }
        
        let pickNum = rangeArr.sorted().first{ $0 > query[2] } ?? -1
        
        result.append(pickNum)
        rangeArr = []
    }
    
    return result
}