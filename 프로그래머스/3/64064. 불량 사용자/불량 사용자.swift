import Foundation

func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    var result = Set<Int>()

    func isMatch(_ user: String, _ banned: String) -> Bool {
        if user.count != banned.count {
            return false
        }

        let userChars = Array(user)
        let bannedChars = Array(banned)

        for i in 0..<userChars.count {
            if bannedChars[i] == "*" {
                continue
            }

            if userChars[i] != bannedChars[i] {
                return false
            }
        }

        return true
    }

    func dfs(_ bannedIndex: Int, _ selected: Int) {
        if bannedIndex == banned_id.count {
            result.insert(selected)
            return
        }

        for i in 0..<user_id.count {
            let bit = 1 << i

            if selected & bit != 0 {
                continue
            }

            if isMatch(user_id[i], banned_id[bannedIndex]) {
                dfs(
                    bannedIndex + 1,
                    selected | bit
                )
            }
        }
    }

    dfs(0, 0)

    return result.count
}