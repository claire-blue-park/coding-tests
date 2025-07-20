import Foundation

let n = Int(readLine()!)!

var white:[[Bool]] = .init(repeating: .init(repeating: false, count: 100), count: 100)

for _ in 0..<n {
    let black = readLine()!.split(separator: " ").map{ Int($0) }
    let x = black[1]!
    let y = black[0]!

    for i in x..<x + 10 {
        for j in y..<y + 10 {
            white[i][j] = true
        }
    }
}

var result = 0

for row in white {
    for cell in row {
        if cell {
            result += 1
        }
    }
}

print(result)