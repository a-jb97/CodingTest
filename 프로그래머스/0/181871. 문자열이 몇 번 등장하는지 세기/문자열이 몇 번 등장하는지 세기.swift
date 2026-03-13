import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let arr = Array(myString)
    let p = Array(pat)
    var count = 0
    
    for i in 0...(arr.count - p.count) {
        if Array(arr[i..<i+p.count]) == p {
            count += 1
        }
    }
    
    return count
}