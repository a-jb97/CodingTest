import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id.lowercased()
    
    id = id.replacingOccurrences(of: "[^a-z0-9-_.]", with: "", options: .regularExpression)
    id = id.replacingOccurrences(of: "\\.{2,}", with: ".", options: .regularExpression)
    id = id.replacingOccurrences(of: "^\\.|\\.$", with: "", options: .regularExpression)
    
    if id.isEmpty {
        id = "a"
    }
    
    if id.count >= 16 {
        id = String(id.prefix(15))
        id = id.replacingOccurrences(of: "\\.$", with: "", options: .regularExpression)
    }
    
    while id.count < 3 {
        id.append(id.last!)
    }
    
    return id
}