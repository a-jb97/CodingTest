import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    func convertDay(date: String) -> Int {
        let parts = date.split(separator: ".").map { Int($0)! }
        let year = parts[0]
        let month = parts[1]
        let day = parts[2]
        
        return (year * 12 * 28) + (month * 28) + day
    }
    
    let todayDay = convertDay(date: today)
    var termDict: [String : Int] = [:]
    var result: [Int] = []
    
    for term in terms {
        let parts = term.split(separator: " ")
        let type = String(parts[0])
        let month = Int(parts[1])!
        
        termDict[type] = month
    }
    
    for (index, privacy) in privacies.enumerated() {
        let parts = privacy.split(separator: " ")
        let date = String(parts[0])
        let type = String(parts[1])
        
        let privacyDay = convertDay(date: date)
        let expireDay = privacyDay + (termDict[type]! * 28)
        
        if expireDay <= todayDay {
            result.append(index + 1)
        }
    }
    
    return result
}