import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var adjList: [[Int]] = .init(repeating: [], count: n + 1)
for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map{ Int($0)! }
  let u = edge.first!, v = edge.last!
  adjList[u].append(v)
  adjList[v].append(u)
}
var queue: [Int] = []
var front = 0
var vis: [Bool] = .init(repeating: false, count: n + 1)
queue.append(1)
vis[1] = true
while queue.count >= front + 1 {
  let cur = queue[front]
  front += 1
  
  for degree in adjList[cur] {
    if vis[degree] { continue }
    vis[degree] = true
    queue.append(degree)
  }
}
print(queue.count - 1)