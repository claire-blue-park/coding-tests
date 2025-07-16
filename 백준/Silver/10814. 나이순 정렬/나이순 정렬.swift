import Foundation

typealias Member = (Int, String)

let n = Int(readLine()!)!

var members: [Member] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    members.append((Int(input[0])!, String(input[1])))
}

members.sort { $0.0 < $1.0 }

var answer = ""
for member in members {
    answer += "\(member.0) \(member.1)\n"
}

print(answer)