import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var usedWords = Set<String>()
    var previousWord = words[0]
    
    usedWords.insert(words[0])
    
    for i in 1..<words.count {
        let currentWord = words[i]
        
        if usedWords.contains(currentWord) {
            return [(i % n) + 1, (i / n) + 1]
        }
        
        if previousWord.last != currentWord.first {
            return [(i % n) + 1, (i / n) + 1]
        }
        
        usedWords.insert(currentWord)
        previousWord = currentWord
    }
    
    return [0, 0]
}