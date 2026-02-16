func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    
    result = arr.filter { $0 % divisor == 0 }
    
    return result.count == 0 ? [-1] : result.sorted()
}