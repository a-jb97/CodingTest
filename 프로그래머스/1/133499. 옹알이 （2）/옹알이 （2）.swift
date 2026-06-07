import Foundation

func solution(_ babbling:[String]) -> Int {
    let sounds = ["aya", "ye", "woo", "ma"]
    var answer = 0

    for word in babbling {
        var temp = word
        var previous = ""
        var isValid = true

        while !temp.isEmpty {
            var matched = false

            for sound in sounds {
                if temp.hasPrefix(sound) {
                    if previous == sound {
                        isValid = false

                        break
                    }

                    temp.removeFirst(sound.count)
                    previous = sound
                    matched = true

                    break
                }
            }

            if !matched || !isValid {
                isValid = false

                break
            }
        }

        if isValid {
            answer += 1
        }
    }
    
    return answer
}