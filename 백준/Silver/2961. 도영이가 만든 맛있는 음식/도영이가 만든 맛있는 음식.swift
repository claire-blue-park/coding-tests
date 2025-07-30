import Foundation

 let n = Int(readLine()!)!

 var s: [Int] = []
 var b: [Int] = []

 var tempS: [Int] = [] 
 var tempB: [Int] = []

 for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    s.append(input[0])
    b.append(input[1])
 }

 var minGap = 1000000000

func recursive(k: Int, m: Int) {
    if k == m {
        let mulS = tempS.reduce(1, *)
        let sumB = tempB.reduce(0, +)

        let gap = mulS >= sumB ? mulS - sumB : sumB - mulS

        minGap = min(minGap, gap)
        return
    }

    for i in k..<n {
        tempS.append(s[i])
        tempB.append(b[i])

        recursive(k: i + 1, m: m)

        tempS.removeLast()
        tempB.removeLast()
    }
}

for m in 1...n {
    recursive(k: 0, m: m)
}

print(minGap)
