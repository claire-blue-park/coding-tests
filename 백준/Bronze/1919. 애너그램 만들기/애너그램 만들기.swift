import Foundation

let first = readLine()!.map{ String($0) }
var second = readLine()!.map{ String($0) }
var result = 0
first.forEach { c in
  if second.contains(c) {
    second.remove(at: second.firstIndex(of: c)!)
  } else {
    result += 1
  }
}
print(result + second.count)