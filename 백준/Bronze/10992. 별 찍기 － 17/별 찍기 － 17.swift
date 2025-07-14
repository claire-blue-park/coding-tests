import Foundation

let n = Int(readLine()!)!

var answer = ""
for i in 1...n {
    for _ in 0..<n - i {
        answer.append(" ")
    }
    if i == n {
        for _ in 1...n * 2 - 1 {
            answer.append("*")
            // i == k ? answer.append("*") : answer.append("* ")
        }
    } else {
        for k in 1...i {
        if k == 1 { answer.append("* ") 
        } else if k == i { answer.append("*") 
        } else { answer.append("  ") }
    }   
    }

    answer.append("\n")
}

print(answer)