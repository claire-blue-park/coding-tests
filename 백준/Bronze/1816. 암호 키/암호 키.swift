import Foundation

let n = Int(readLine()!)!
let max = 1000000

for _ in 0..<n {
    let s = Int(readLine()!)!

    var flag = true
    for i in 2...max {
        if s % i == 0  {
            flag = false
            break
        }
    }

    print(flag ? "YES" : "NO") 
}
