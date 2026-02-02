import Foundation

func solution(_ num_list:[Int]) -> Int {
    var count = 0
    var number = num_list
    
    for i in 0..<number.count {
        while number[i] != 1 {
            if number[i] % 2 == 0 {
                number[i] = number[i] / 2
                count += 1
            } else if number[i] % 2 == 1 {
                number[i] = (number[i] - 1) / 2
                count += 1
            }
        }
    }
    
    return count
}