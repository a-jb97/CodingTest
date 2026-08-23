import Foundation

func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
    var result = 0
    let coverage = 2 * w + 1
    var start = 1
    
    for station in stations {
        let left = station - w
        
        if start < left {
            let length = left - start
            
            result += (length + coverage - 1) / coverage
        }
        
        start = station + w + 1
    }
    
    if start <= n {
        let length = n - start + 1
        
        result += (length + coverage - 1) / coverage
    }
    
    return result
}