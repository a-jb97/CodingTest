import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        var sliceArr: [Int] = []
        
        for i in command[0]...command[1] {
            sliceArr.append(array[i-1])
        }
        
        sliceArr.sort()
        
        result.append(sliceArr[command[2] - 1])
    }
    
    return result
}