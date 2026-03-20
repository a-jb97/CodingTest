import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count > arr2.count {
        return 1
    } else if arr1.count < arr2.count {
        return -1
    } else {
        var arr1Sum = 0
        var arr2Sum = 0
        
        arr1.forEach { arr1Sum += $0 }
        arr2.forEach { arr2Sum += $0 }
        
        if arr1Sum > arr2Sum {
            return 1
        } else if arr1Sum < arr2Sum {
            return -1
        } else {
            return 0
        }
    }
}