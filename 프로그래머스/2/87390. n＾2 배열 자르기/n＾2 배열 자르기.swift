import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    
    for i in left...right {
        let row = Int(i / Int64(n))
        let column = Int(i % Int64(n))
        
        result.append(max(row, column) + 1)
    }
    
    return result
}