import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input.first!, m = input.last!
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
var answer = 0
for start in 1..<n+1 {
  
  if vis[start] { continue }
  
  queue.append(start)
  vis[start] = true
  answer += 1
  
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
}
print(answer)