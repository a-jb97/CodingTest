func solution(_ phone_number:String) -> String {
    var result = ""
    var lastFour = phone_number.dropFirst(phone_number.count - 4)
    
    if phone_number.count > 4 {
        for _ in 1...(phone_number.count - 4) {
            result.append("*")
        }
    }
    
    return result + lastFour
}