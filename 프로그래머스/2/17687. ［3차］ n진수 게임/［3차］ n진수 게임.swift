func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var sequence: [Character] = []
    var number = 0
    
    while sequence.count < t * m {
        let converted = String(number, radix: n, uppercase: true)
        
        sequence.append(contentsOf: converted)
        number += 1
    }
    
    var result: [Character] = []
    var index = p - 1
    
    while result.count < t {
        result.append(sequence[index])
        index += m
    }
    
    return String(result)
}