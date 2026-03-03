import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    var chars = Array(s)
    
    for _ in 0..<chars.count {
        if isValid(chars) {
            answer += 1
        }
        
        let first = chars.removeFirst()
        chars.append(first)
    }
    
    return answer
}

func isValid(_ chars: [Character]) -> Bool {
    var stack: [Character] = []
    
    for char in chars {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else {
            if stack.isEmpty { return false }
            
            let last = stack.removeLast()
            
            if (char == ")" && last != "(") ||
                (char == "]" && last != "[") ||
                (char == "}" && last != "{") {
                return false
            }
        }
    }
    
    return stack.isEmpty
}