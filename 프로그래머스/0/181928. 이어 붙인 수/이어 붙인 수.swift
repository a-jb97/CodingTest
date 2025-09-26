import Foundation

func solution(_ num_list:[Int]) -> Int {
    var sumOddNum = ""
    var sumEvenNum = ""
    
    for i in 0..<num_list.count {
        var element = num_list[i]
        
        element % 2 == 1 ? sumOddNum.append(String(element)) : sumEvenNum.append(String(element))
    }
    
    return (Int(sumOddNum) ?? 0) + (Int(sumEvenNum) ?? 0)
}