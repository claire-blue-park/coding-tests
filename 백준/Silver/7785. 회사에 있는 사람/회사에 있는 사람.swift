 import Foundation

let n = Int(readLine()!)!

var dic: [String: String] = [:]

for _ in 0..<n {
  let worker = readLine()!.split(separator: " ").map{ String($0) }
    dic[worker[0]] = worker[1]
}

var answer: [String] = []

let _ = dic.map {
    if $0.value == "enter" {
        answer.append($0.key)
    }
}

answer.sort(by: >)

for a in answer {
    print(a)
}
