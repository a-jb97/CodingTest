func solution(_ s:String) -> String {
    var wordIndex = 0
    var result = ""
    
    for c in s {
        if wordIndex % 2 == 0 {
            if c == " " {
                result.append(" ")
                wordIndex = 0
            } else {
                result.append(c.uppercased())
                wordIndex += 1
            }
        } else {
            result.append(c.lowercased())
            wordIndex += 1
        }
    }
    
    return result
}