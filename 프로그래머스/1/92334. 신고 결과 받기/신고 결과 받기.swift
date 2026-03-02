import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let uniqueReport = Set(report)
    var reportCountDict: [String : Int] = [:]
    var mailCount: [String : Int] = [:]
    
    for id in id_list {
        reportCountDict[id] = 0
        mailCount[id] = 0
    }
    
    for report in uniqueReport {
        let split = report.split(separator: " ")
        let reported = String(split[1])
        
        reportCountDict[reported, default: 0] += 1
    }
    
    let bannedSet = Set(
        reportCountDict.filter { $0.value >= k }.map { $0.key }
    )
    
    for report in uniqueReport {
        let split = report.split(separator: " ")
        let reporter = String(split[0])
        let reported = String(split[1])
        
        if bannedSet.contains(reported) {
            mailCount[reporter]! += 1
        }
    }
    
    return id_list.map { mailCount[$0]! }
}