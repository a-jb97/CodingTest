import Foundation

func solution(_ myStr:String) -> [String] {
    var result: [String] = []
    var current = ""

    for ch in myStr {
        if ch == "a" || ch == "b" || ch == "c" {
            if !current.isEmpty {
                result.append(current)
                current = ""
            }
        } else {
            current.append(ch)
        }
    }

    if !current.isEmpty {
        result.append(current)
    }

    return result.isEmpty ? ["EMPTY"] : result
}