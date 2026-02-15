import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var result: [Int] = []
    
    for num in num1...num2 {
        result.append(numbers[num])
    }
    
    return result
}