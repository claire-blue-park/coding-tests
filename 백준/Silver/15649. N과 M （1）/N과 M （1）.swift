import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]

var visited: [Bool] = .init(repeating: false, count: n + 1)
var arr: [Int] = []

func recursive(k: Int) {
    if k == m { 
        for i in 0..<m {
            print(arr[i], terminator: " ")
        }
        print()
        return
    }
    
    for i in 1...n {
      if !visited[i] {
        arr.append(i)
        visited[i] = true
        recursive(k: k + 1)
        arr.removeLast()
        visited[i] = false
      }
    }

}

recursive(k: 0)