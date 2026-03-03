import Foundation

func solution(_ s:String) -> Int{
    var stack: [Character] = []
    
    for char in s {
        if stack.last == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty ? 1 : 0
}