import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n + 1)
    for num in edge {
        graph[num[0]].append(num[1])
        graph[num[1]].append(num[0])
    }
    return bfs(graph: graph, n: n)
}

func bfs (graph: [[Int]], n: Int) -> Int {
    var queue = [(node: Int, count: Int)]()
    var visited = Array(repeating: false, count: n + 1)
    queue.append((1,0))
    visited[1] = true
    
    var maxCount = 0
    var movingCount = Array(repeating: [Int](), count: 10000)
    
    while !queue.isEmpty {
        let (node, count) = queue.removeFirst()

        movingCount[count].append(node)
            maxCount = max(count, maxCount)
            for i in graph[node]{
                if !visited[i]{
                    queue.append((i, count + 1))
                    visited[i] = true
                }
            }
    }
    return movingCount[maxCount].count
}
