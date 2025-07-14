import Foundation

_ = Int(readLine()!)!
let input = readLine()!.map { Int(String($0))! }

var answer = 0
for num in input {
    answer += num
}

print(answer)