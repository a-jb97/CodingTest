import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var result = [0, 0]

    func compress(_ x: Int, _ y: Int, _ size: Int) {
        let first = arr[x][y]
        
        for i in x..<x + size {
            for j in y..<y + size {
                if arr[i][j] != first {
                    let half = size / 2

                    compress(x, y, half)
                    compress(x, y + half, half)
                    compress(x + half, y, half)
                    compress(x + half, y + half, half)

                    return
                }
            }
        }

        result[first] += 1
    }

    compress(0, 0, arr.count)

    return result
}