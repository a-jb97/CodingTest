import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var empty = n
    var result = 0
    
    while empty >= a {
        let received = (empty / a) * b
        
        result += received
        
        empty = (empty % a) + received
    }
    
    return result
}