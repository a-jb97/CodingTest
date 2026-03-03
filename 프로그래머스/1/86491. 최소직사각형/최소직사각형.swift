import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        let w = max(size[0], size[1])
        let h = min(size[0], size[1])
        
        maxWidth = max(maxWidth, w)
        maxHeight = max(maxHeight, h)
    }
    
    return maxWidth * maxHeight
}