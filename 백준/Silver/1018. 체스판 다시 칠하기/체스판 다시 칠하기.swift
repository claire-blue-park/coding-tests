import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]

var board: [[Character]] = .init(repeating: .init(repeating: " ", count: m), count: n)

for i in 0..<n {
    let input = Array(readLine()!)
    for j in 0..<m {
        board[i][j] = input[j]
    }
}

var minDiff = Int.max

for r in 0..<(n - 7) {
    for c in 0..<(m - 7) { 
        var white = 0 
        var black = 0

        for i in 0..<8 {
            for j in 0..<8 {
                let cur = board[r + i][c + j]

                if (i + j) % 2 == 0 { 
                    if cur == "B" { white += 1 }
                    if cur == "W" { black += 1 }
                } else {
                    if cur == "W" { white += 1 }
                    if cur == "B" { black += 1 }
                }
            }
        }
       let currentMin = min(white, black)
        
        minDiff = min(minDiff, currentMin)
    }
}

print(minDiff)