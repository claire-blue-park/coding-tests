import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var dic: [String: Bool] = [:]

for i in 0..<n+m {
    let input = String(readLine()!)
    if i < n {
        dic[input] = false
    } else {
      if dic[input] != nil {
            dic[input] = true
        }
    }
}

var answer: [String] = []
let _ = dic.map {
    if $0.value == true {
        answer.append($0.key)
    }
}
answer.sort()
print(answer.count)
print(answer.joined(separator: "\n"))
