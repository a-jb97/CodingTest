import Foundation

func solution(_ binomial:String) -> Int {
    let split = binomial.split(separator: " ")
    
    let num1 = Int(split[0])!
    let op = split[1]
    let num2 = Int(split[2])!
    
    switch op {
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    default:
        return 0
    }
}