import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }

var set: Set<String> = []

let games: [String: Int] = ["Y": 1, "F": 2, "O": 3]

for _ in 0..<Int(input[0])! {
    set.insert(readLine()!)
}

print(set.count / games[input[1]]!)