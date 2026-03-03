func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache: [String] = []
    var time = 0
    
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    for city in cities {
        let lowerCity = city.lowercased()
        
        if let index = cache.firstIndex(of: lowerCity) {
            time += 1
            
            cache.remove(at: index)
            cache.append(lowerCity)
        } else {
            time += 5
            
            if cache.count == cacheSize {
                cache.removeFirst()
            }
            
            cache.append(lowerCity)
        }
    }
    
    return time
}