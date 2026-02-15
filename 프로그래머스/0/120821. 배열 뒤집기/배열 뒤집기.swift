import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result: [Int] = []
    
    for num in num_list {
        result.insert(num, at: 0)
    }
    
    return result
}