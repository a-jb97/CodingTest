import Foundation

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    guard words.contains(target) else {
        return 0
    }
    
    var visited = Array(repeating: false, count: words.count)
    var queue: [(word: String, count: Int)] = [(begin, 0)]
    var index = 0
    
    while index < queue.count {
        let current = queue[index]
        index += 1
        
        if current.word == target {
            return current.count
        }
        
        for i in 0..<words.count {
            if visited[i] {
                continue
            }
            
            if canConvert(current.word, words[i]) {
                visited[i] = true
                queue.append((words[i], current.count + 1))
            }
        }
    }
    
    return 0
}

func canConvert(_ word1: String, _ word2: String) -> Bool {
    let chars1 = Array(word1)
    let chars2 = Array(word2)
    
    var diffCount = 0
    
    for i in 0..<chars1.count {
        if chars1[i] != chars2[i] {
            diffCount += 1
            
            if diffCount > 1 {
                return false
            }
        }
    }
    
    return diffCount == 1
}