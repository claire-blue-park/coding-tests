import Foundation

let count = Int(readLine()!)!
var answer = ""

for i in 0..<count {
    let test = readLine()!.split(separator: " ")
    let x = Array(test[0])
    let y = Array(test[1])
    
    answer.append("Distances: ")
    
    for j in 0..<x.count {
        let xValue = Int(x[j].asciiValue! - Character("A").asciiValue!)
        let yValue = Int(y[j].asciiValue! - Character("A").asciiValue!)
        
        let distance = yValue >= xValue ? yValue - xValue : (yValue + 26) - xValue
        answer.append("\(distance) ")
    }
    
    answer = String(answer.dropLast())
    answer.append("\n")
}

print(answer)