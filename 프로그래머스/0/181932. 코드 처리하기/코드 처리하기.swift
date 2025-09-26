import Foundation

func solution(_ code:String) -> String {
    let arrCode = Array(code)
    var mode = false
    var ret = ""
    
    for idx in 0...code.count - 1 {
        switch mode {
        case false:
            if arrCode[idx] != "1" {
                if idx % 2 == 0 {
                    ret += String(arrCode[idx])
                }
            } else {
                mode = true
            }
        case true:
            if arrCode[idx] != "1" {
                if idx % 2 == 1 {
                    ret += String(arrCode[idx])
                }
            } else {
                mode = false
            }
        }
    }
    
    if ret.isEmpty {
        return "EMPTY"
    }
    
    return ret
}