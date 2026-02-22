import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var result: [Int?] = [nil, wallpaper[0].count, 0, 0]
    
    for i in 0..<wallpaper.count {
        if wallpaper[i].contains("#") {
            if result[0] == nil {
                result[0] = i
            }
            
            result[2] = i + 1
        }
        
        for j in 0..<wallpaper[i].count {
            let index = wallpaper[i].index(wallpaper[i].startIndex, offsetBy: j)
            
            if wallpaper[i][index] == "#" {
                if result[1]! > j {
                    result[1] = j
                }
                
                if result[3]! <= j {
                    result[3] = j + 1
                }
            }
        }
    }
    
    return result as! [Int]
}