let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let v = Int(readLine()!)!

var result = 0

for i in 0..<n {
    if arr[i] == v {
        result += 1
    }
}

print(result)