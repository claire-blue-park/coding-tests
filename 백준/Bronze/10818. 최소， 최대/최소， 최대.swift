import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }

var mini = 1000000, maxi = -1000000

for i in 0..<input.count {
    mini = min(mini, input[i])
    maxi = max(maxi, input[i])
}

print(mini, maxi)