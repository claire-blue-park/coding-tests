import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }
let start = input[0], end = input[1], stream = input[2]

var enter = Set<String>()
var leave = Set<String>()

while let temp = readLine() {
  let input = temp.split(separator: " ").map { String($0) }
  let time = input[0], name = input[1]
  if time <= start {
    enter.insert(name)
  } else if time >= end && time <= stream {
    if enter.contains(name) {
      leave.insert(name)
    }
  }
}

print(leave.count)