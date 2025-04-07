import Foundation

var arr = Array(1...20)

for _ in 0..<10 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0] - 1
    let end = input[1] - 1
    
    var temp = Array(arr[start...end])
    temp.reverse()
    
    for i in 0..<temp.count {
        arr[start + i] = temp[i]
    }
}

print(arr.map { String($0) }.joined(separator: " "))