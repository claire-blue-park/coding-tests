import Foundation

let total = Int(readLine()!)!

for _ in 0..<total {
    let n = Int(readLine()!)!
    var closet: Dictionary<String, [String]> = [:]

    for _ in 0..<n {
        let input = readLine()!.components(separatedBy: " ") // 공백 구분
    
        let category = input.last!
        let clothes = input.first!

        if closet[category] != nil {
            closet[category]!.append(clothes)
        } else {
            closet[category] = [clothes]
        }
    }
    
    var num = 1
    
    for clothes in closet {
        num *= clothes.value.count + 1
    }
    
    print(num - 1)
}