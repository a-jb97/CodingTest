import Foundation

func solution(_ arr:[Int]) -> [Int] {
        var stack: [Int] = []
    
    for num in arr {
        if stack.isEmpty {
            stack.append(num)
        } else {
            if stack.last == num {
                stack.removeLast()
            } else {
                stack.append(num)
            }
        }
    }
    
    return stack.isEmpty ? [-1] : stack
}