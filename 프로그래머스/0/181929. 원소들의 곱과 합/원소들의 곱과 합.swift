import Foundation

func solution(_ num_list:[Int]) -> Int {
    var multiple = 1
    var plus = 0
    var result = 0
    
    for i in 0...num_list.count - 1 {
        multiple *= num_list[i]
        plus += num_list[i]
    }
    
    result = multiple < Int(pow(Double(plus), 2.0)) ? 1 : 0
    
    return result
}