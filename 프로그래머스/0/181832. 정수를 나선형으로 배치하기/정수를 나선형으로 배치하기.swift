import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)
    let dy = [0, 1, 0, -1]
    let dx = [1, 0, -1, 0]
    var y = 0, x = 0, dir = 0

    for i in 1...n * n {
        answer[y][x] = i
        let ny = y + dy[dir]
        let nx = x + dx[dir]
        
        if ny < 0 || ny >= n || nx < 0 || nx >= n || answer[ny][nx] != 0 {
            dir = (dir + 1) % 4
            y = y + dy[dir]
            x = x + dx[dir]
        } else {
            y = ny  
            x = nx
        }
    }
    
    return answer
}