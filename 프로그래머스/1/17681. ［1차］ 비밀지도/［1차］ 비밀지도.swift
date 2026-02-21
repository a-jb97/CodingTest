func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var binaryArr1: [String] = []
    var binaryArr2: [String] = []
    var answer = Array(repeating: "", count: n)
    
    for i in arr1 {
        let binary = String(i, radix: 2)
        let padding = String(repeating: "0", count: n - binary.count) + binary
        
        binaryArr1.append(padding)
    }
    
    for i in arr2 {
        let binary = String(i, radix: 2)
        let padding = String(repeating: "0", count: n - binary.count) + binary
        
        binaryArr2.append(padding)
    }
    
    for i in 0..<n {
        var resultBinary = ""
        
        for binary in 0..<n {
            let binaryArr1Index = binaryArr1[i].index(binaryArr1[i].startIndex, offsetBy: binary)
            let binaryArr2Index = binaryArr2[i].index(binaryArr2[i].startIndex, offsetBy: binary)
            
            if binaryArr1[i][binaryArr1Index] == "1" || binaryArr2[i][binaryArr2Index] == "1" {
                resultBinary.append("#")
                
            } else {
                resultBinary.append(" ")
            }
            
            answer[i] = resultBinary
        }
    }
    
    return answer
}