import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow
    
    for height in 1...total {
        if total % height == 0 {
            let width = total / height
            
            if width >= height {
                if (width - 2) * (height - 2) == yellow {
                    return [width, height]
                }
            }
        }
    }
    
    return []
}