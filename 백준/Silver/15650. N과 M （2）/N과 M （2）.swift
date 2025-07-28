import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]

var arr: [Int] = .init(repeating: -1, count: m + 1)

func recursive(k: Int, s: Int) {
    if k == m {
        for i in 0..<m { 
            print(arr[i], terminator: " ") 
        }
      print()
      return
    }

    for i in s..<n {
      arr[k] = i + 1
      recursive(k: k + 1, s: i + 1)
    }
}

recursive(k: 0, s: 0)