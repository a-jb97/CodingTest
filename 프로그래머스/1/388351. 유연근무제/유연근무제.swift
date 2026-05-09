import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    func toMinutes(_ time: Int) -> Int {
        return (time / 100) * 60 + (time % 100)
    }
    
    var result = 0
    
    for i in 0..<schedules.count {
        let limitTime = toMinutes(schedules[i] + 10)
        var canReceiveGift = true
        
        for dayOffset in 0..<7 {
            let day = ((startday - 1 + dayOffset) % 7) + 1
            
            if day == 6 || day == 7 {
                continue
            }
            
            let actualTime = toMinutes(timelogs[i][dayOffset])
            
            if actualTime > limitTime {
                canReceiveGift = false
                
                break
            }
        }
        
        if canReceiveGift {
            result += 1
        }
    }
    
    return result
}