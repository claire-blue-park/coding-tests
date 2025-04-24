import Foundation

let p = Int(readLine()!)!

var buffer = ""

for i in 1...p {
    var students = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    students.removeFirst()

    var count = 0
    for j in 1..<20 {
        for k in stride(from: j, to: 0, by: -1) {
            if students[k - 1] > students[k] {
                students.swapAt(k - 1, k)
                count += 1
            } else { break }
        }
    }
    
    buffer += "\(i) \(count)\n"
}

print(buffer)