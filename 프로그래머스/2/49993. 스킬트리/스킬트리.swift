import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result = 0

    for tree in skill_trees {
        var filtered = ""

        for ch in tree {
            if skill.contains(ch) {
                filtered.append(ch)
            }
        }

        if skill.hasPrefix(filtered) {
            result += 1
        }
    }

    return result
}