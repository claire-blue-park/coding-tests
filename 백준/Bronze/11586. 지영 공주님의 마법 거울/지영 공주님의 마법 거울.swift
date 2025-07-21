import Foundation

let n = Int(readLine()!)!

var p: [[Character]] = .init(repeating: .init(repeating: " ", count: n), count: n)

for i in 0..<n {
    let input = readLine()!
    let row = Array(input)

    for j in 0..<n {
        p[i][j] = row[j]
    }
}

let level = Int(readLine()!)!

var answer: [[Character]] = .init(repeating: .init(repeating: " ", count: n), count: n)

if level == 2 {
    for i in 0..<n {
        for j in 0..<n {
            answer[i][j] = p[i][(n - 1) - j]
        }
    }
} else if level == 3 {
    for i in 0..<n {
        for j in 0..<n {
            answer[i][j] = p[(n - 1) - i][j]
        }
    }
} else {
    answer = p
}

for i in 0..<n {
    var line = ""
    for j in 0..<n {
        line.append(answer[i][j])
    }
    print(line)
}

