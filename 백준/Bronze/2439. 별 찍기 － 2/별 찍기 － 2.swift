import Foundation

let n = Int(readLine()!)!

var stars: [String] = .init(repeating: " ", count: n)

for i in 0...n - 1 {
    stars[stars.count - 1 - i] = "*"
    print(stars.joined(separator: ""))
}