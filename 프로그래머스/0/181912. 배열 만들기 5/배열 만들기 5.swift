import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var ret: [Int] = []
    let sliceIntStrs = intStrs.compactMap { str -> Int? in
        let start = str.index(str.startIndex, offsetBy: s)
        let end = str.index(str.startIndex, offsetBy: s + l, limitedBy: str.endIndex) ?? str.endIndex
        return Int(str[start..<end]) ?? 0
    }
    
    for i in sliceIntStrs {
        i > k ? ret.append(i) : nil
    }
    
    return ret
}