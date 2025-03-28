import Foundation

let s = readLine()!

var count = [Int](repeating: 0, count: 26)
var alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

for char in s {
    if let index = alphabets.firstIndex(of: String(char)) {
        count[index] += 1
    }
}

let result = count.map { String($0) }.joined(separator: " ")

print(result)