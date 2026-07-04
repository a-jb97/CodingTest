func solution(_ n:Int) -> Int {
    let mod = 1234567
    var dp = Array(repeating: 0, count: n + 1)

    dp[1] = 1

    if n >= 2 {
        for i in 2...n {
            dp[i] = (dp[i - 1] + dp[i - 2]) % mod
        }
    }

    return dp[n]
}