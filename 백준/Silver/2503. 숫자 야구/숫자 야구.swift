import Foundation

let n = Int(readLine()!)!

var tryNums: [[Int]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    tryNums.append(input)
}

var answerCount = 0

   for i in 1...9 {
        for j in 1...9 {
            for k in 1...9 {
                if i == j || i == k || j == k { continue }

                let temp = [i, j, k]

                var rightCount = 0

                for r in 0..<n {
                    let tryNum = Array(String(tryNums[r][0])).map{ Int(String($0))! } 
                    let strike = Int(tryNums[r][1])
                    let ball = Int(tryNums[r][2])

                    if checkStrikeCount(a: temp, b: tryNum) == strike && 
                        checkBallCount(a: temp, b: tryNum) == ball {
                            rightCount += 1

                    } else {
                        
                    }
                }

                if rightCount == n {
                    answerCount += 1
                }
            }
        }
    }

print(answerCount)


func checkStrikeCount(a: [Int], b: [Int]) -> Int {
    var count = 0
    for i in 0..<3 {
        if a[i] == b[i] { count += 1 }
    }
    return count
}

func checkBallCount(a: [Int], b: [Int]) -> Int {
    var count = 0
    for i in 0..<3 {
        for j in 0..<3 {
            if i == j { continue }
            if a[i] == b[j] {
                count += 1
            }
        }
    }
    return count
}