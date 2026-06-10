import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let total = Int64(price) * Int64(count) * Int64(count + 1) / 2
    let lack = total - Int64(money)

    return lack > 0 ? lack : 0
}