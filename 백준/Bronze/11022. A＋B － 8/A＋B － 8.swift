import Foundation

let t = Int(readLine()!)!

var answer = ""
for i in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input.first!
    let b = input.last!
    answer += "Case #\(i + 1): \(a) + \(b) = \(a + b)\n"
}

print(answer)