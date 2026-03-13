import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var result = ""
    
    for i in myString.indices {
        let prefix = String(myString[...i])
        
        if prefix.hasSuffix(pat) {
            result = prefix
        }
    }
    
    return result
}