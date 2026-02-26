import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var skipAsciiValue: [UInt8] = []
    var result = ""
    
    for c in skip {
        skipAsciiValue.append(c.asciiValue!)
    }
    
    for c in s {
        var currentAsciiValue: UInt8 = c.asciiValue!
        var count = 0
        
        while count < index {
            currentAsciiValue += 1
            
            if currentAsciiValue > 122 {
                currentAsciiValue = 97
            }
            
            if !skipAsciiValue.contains(currentAsciiValue) {
                count += 1
            }
        }
        
        result.append(Character(UnicodeScalar(currentAsciiValue)))
    }
    
    return result
}