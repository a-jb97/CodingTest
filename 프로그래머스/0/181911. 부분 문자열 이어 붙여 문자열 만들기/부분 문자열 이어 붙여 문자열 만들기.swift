import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var result: String = ""
    
    if my_strings.count == parts.count {
        for i in 0...my_strings.count - 1 {
            let start = my_strings[i].index(my_strings[i].startIndex, offsetBy: parts[i][0])
            let end = my_strings[i].index(my_strings[i].startIndex, offsetBy: parts[i][1])
            
            result.append(contentsOf: my_strings[i][start...end])
        }
    }
    
    return result
}