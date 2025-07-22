import Foundation

let n = Int(readLine()!)!

var cases = 0

for a in 1..<n {           
    for b in 1..<n {   
        for c in 1..<n { 
            if c >= b + 2 && a % 2 == 0 && a + b + c == n {
                cases += 1
            }
        }
    }
}

print(cases)