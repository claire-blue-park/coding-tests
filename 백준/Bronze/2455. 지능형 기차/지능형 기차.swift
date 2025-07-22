import Foundation

var total = 0
var result = 0

for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let left = input[0]
    let on = input[1]

    let cur =  total - left + on
    result = max(result, cur)
    total = cur
}

print(result)