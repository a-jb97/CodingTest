import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let sorted = num_list.sorted()
    
    return Array(sorted.suffix(sorted.count - 5))
}