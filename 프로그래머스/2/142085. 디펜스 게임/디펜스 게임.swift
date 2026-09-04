import Foundation

struct MinHeap {
    private var heap: [Int] = []

    var count: Int {
        heap.count
    }

    mutating func push(_ value: Int) {
        heap.append(value)

        var index = heap.count - 1

        while index > 0 {
            let parent = (index - 1) / 2

            if heap[parent] <= heap[index] {
                break
            }

            heap.swapAt(parent, index)
            index = parent
        }
    }

    mutating func pop() -> Int? {
        guard !heap.isEmpty else {
            return nil
        }

        if heap.count == 1 {
            return heap.removeLast()
        }

        let result = heap[0]
        heap[0] = heap.removeLast()

        var index = 0

        while true {
            let left = index * 2 + 1
            let right = index * 2 + 2
            var smallest = index

            if left < heap.count && heap[left] < heap[smallest] {
                smallest = left
            }

            if right < heap.count && heap[right] < heap[smallest] {
                smallest = right
            }

            if smallest == index {
                break
            }

            heap.swapAt(index, smallest)
            index = smallest
        }

        return result
    }
}

func solution(_ n: Int, _ k: Int, _ enemy: [Int]) -> Int {
    if k >= enemy.count {
        return enemy.count
    }

    var heap = MinHeap()
    var soldiers = n

    for i in 0..<enemy.count {
        heap.push(enemy[i])

        if heap.count > k {
            if let smallest = heap.pop() {
                soldiers -= smallest
            }
        }

        if soldiers < 0 {
            return i
        }
    }

    return enemy.count
}