func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").compactMap { Int($0) }
    let minValue = numbers.min()!
    let maxValue = numbers.max()!

    return "\(minValue) \(maxValue)"
}