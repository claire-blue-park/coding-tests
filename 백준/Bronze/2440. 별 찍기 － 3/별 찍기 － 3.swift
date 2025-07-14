import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    var answer = ""
    for _ in 0...n - i {
        answer += "*"
    }
    print(answer)
}