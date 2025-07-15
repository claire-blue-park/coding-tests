import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let rightSet = [1, 1, 2, 2, 2, 8]

var answer = ""

for i in 0..<rightSet.count {
    answer.append("\(rightSet[i] - input[i]) ")
}

print(answer.dropLast())