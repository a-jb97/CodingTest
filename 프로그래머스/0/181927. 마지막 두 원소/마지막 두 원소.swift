import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let last = num_list[num_list.count - 1]
    let frontLast = num_list[num_list.count - 2]
    var result = num_list
    
    last > frontLast ? result.append(last - frontLast) : result.append(last * 2)
    
    return result
}