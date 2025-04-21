import Foundation

let number = readLine()!.map { Int(String($0))! }
    
var set = Array(repeating: 0, count: 10)

for i in number {
    set[i] += 1
}

let share = (set[6] + set[9] + 1) / 2
set[6] = share
set[9] = 0

print(set.max()!)