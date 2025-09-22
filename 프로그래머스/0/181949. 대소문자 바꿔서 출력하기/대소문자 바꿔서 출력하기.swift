import Foundation

let s1 = readLine()!

for i in s1 {
    if i.isUppercase {
        print(i.lowercased(), terminator: "")
    } else if i.isLowercase {
        print(i.uppercased(), terminator: "")
    }
}