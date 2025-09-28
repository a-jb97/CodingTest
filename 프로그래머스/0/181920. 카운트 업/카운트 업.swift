import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result: [Int] = []
    
    for num in start_num...end_num {
        result.append(num)
    }
    
    return result
}