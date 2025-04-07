import Foundation

var arr: [Int] = []
var sum = 0
for _ in 0..<9 {
  let input = Int(readLine()!)!
  arr.append(input)
  sum += input
}
loop: for i in 0..<8 {
  for j in i+1..<9 {
    if sum - (arr[i] + arr[j]) == 100 {
      let result = arr.filter { $0 != arr[i] && $0 != arr[j] }
      for num in result.sorted() {
        print(num)
      }
      
      break loop
    }
  }
}