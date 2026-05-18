import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let tArr = Array(t)
    let length = p.count
    let target = Int64(p)!
    var result = 0
    
    for i in 0...(t.count - length) {
        let sub = String(tArr[i..<i + length])
        let num = Int64(sub)!
        
        if num <= target {
            result += 1
        }
    }
    
    return result
}