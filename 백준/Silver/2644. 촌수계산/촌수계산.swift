import Foundation

let n = Int(readLine()!)!
let find = readLine()!.split(separator: " ").map{ Int($0)! }
let m = Int(readLine()!)!
var adjList: [[Int]] = .init(repeating: [], count: n + 1)
for _ in 1...m {
  let temp = readLine()!.split(separator: " ").map{ Int($0)! }
  let x = temp.first!, y = temp.last!
  adjList[x].append(y)
  adjList[y].append(x)
}
var queue: [Int] = []
var front = 0
var vis: [Int] = .init(repeating: -1, count: n + 1)
queue.append(find[0])
vis[find[0]] = 0
while queue.count >= front + 1 {
  let cur = queue[front]
  front += 1
  
  for degree in adjList[cur] {
    if vis[degree] != -1 { continue }
    queue.append(degree)
    vis[degree] = vis[cur] + 1
  }
}
print(vis[find.last!])