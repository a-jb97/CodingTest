import Foundation

func solution(
    _ data: [[Int]],
    _ col: Int,
    _ row_begin: Int,
    _ row_end: Int
) -> Int {
    
    let column = col - 1
    
    let sortedData = data.sorted {
        if $0[column] == $1[column] {
            return $0[0] > $1[0]
        }
        
        return $0[column] < $1[column]
    }
    
    var result = 0
    
    for i in row_begin...row_end {
        let row = sortedData[i - 1]
        var sum = 0
        
        for value in row {
            sum += value % i
        }
        
        result ^= sum
    }
    
    return result
}