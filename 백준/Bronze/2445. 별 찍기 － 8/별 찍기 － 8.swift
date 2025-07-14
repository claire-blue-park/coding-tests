import Foundation

let n = Int(readLine()!)!

var stars: [String] = .init(repeating: " ", count: n * 2)

for i in 0...n - 1 {
    stars[i] = "*"
    stars[stars.count - 1 - i] = "*"
    print(stars.joined(separator: ""))
}

for i in 0...n - 1 {
    stars[n - 1  - i] = " "
    stars[n + i] = " "
    print(stars.joined(separator: ""))
}