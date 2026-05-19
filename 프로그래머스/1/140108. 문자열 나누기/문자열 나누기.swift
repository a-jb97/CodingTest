import Foundation

func solution(_ s:String) -> Int {
    let chars = Array(s)
    var result = 0
    
    var same = 0
    var diff = 0
    var first: Character? = nil
    
    for ch in chars {
        if first == nil {
            first = ch
            same = 1
            diff = 0
        } else {
            if ch == first! {
                same += 1
            } else {
                diff += 1
            }
        }
        
        if same == diff {
            result += 1
            first = nil
            same = 0
            diff = 0
        }
    }
    
    if first != nil {
        result += 1
    }
    
    return result
}