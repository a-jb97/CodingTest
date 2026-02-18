func solution(_ strings:[String], _ n:Int) -> [String] {
    var result: [String] = []
    
    result = strings.sorted { first, next in
        var firstIndex = first[first.index(first.startIndex, offsetBy: n)]
        var nextIndex = next[next.index(next.startIndex, offsetBy: n)]
        
        if firstIndex == nextIndex {
            return first < next
        } else {
            return firstIndex < nextIndex
        }
    }
    
    return result
}