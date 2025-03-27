let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
let x = Int(readLine()!)!
var answer = 0
var vis: [Bool] = .init(repeating: false, count: 2000000 + 2)
for element in arr {
    vis[element] = true
}
for element in arr {
    if element < x && vis[x - element] {answer += 1}
}

print(answer / 2)