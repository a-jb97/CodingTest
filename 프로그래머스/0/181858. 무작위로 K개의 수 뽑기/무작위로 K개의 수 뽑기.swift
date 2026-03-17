import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    var set = Set<Int>()
    
    for num in arr {
        if !set.contains(num) {
            set.insert(num)
            result.append(num)
        }
        
        if result.count == k {
            break
        }
    }
    
    while result.count < k {
        result.append(-1)
    }
    
    return result
}