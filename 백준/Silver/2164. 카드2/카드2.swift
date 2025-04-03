  import Foundation 

  let input = Int(readLine()!)!
  var front = 0
  var queue: [Int] = Array(1...input)
 
  while queue.count - front > 1 {
    front += 1
    queue.append(queue[front])
    front += 1
  }

   print(queue[front])