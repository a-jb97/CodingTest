func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = arr
    let minNum = result.min()!
    
    result = result.filter { $0 != minNum }
    
    if result.count == 0 {
        result = [-1]
    }
    
    return result
}