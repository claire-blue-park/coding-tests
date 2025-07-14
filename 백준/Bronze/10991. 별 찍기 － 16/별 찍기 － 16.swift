import Foundation

let n = Int(readLine()!)!

var answer = ""
for i in 1...n {
    for _ in 0..<n - i {
        answer.append(" ")
    }
    for k in 0..<i {
        k == i ? answer.append("*") : answer.append("* ")
    }   
    answer.append("\n")
}

print(answer)