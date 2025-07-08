import Foundation

func solution(_ babbling:[String]) -> Int {
    
  var temp = babbling
  let availables = ["aya", "ye", "woo", "ma"]

  for i in 0..<temp.count {
    for a in availables {
      // if babbling[i].contains(a) {
        temp[i] = temp[i].replacingOccurrences(of: a, with: "0")
      // }
    }
  }

  let result = temp.filter{ Int($0) != nil }.count
  return result
}
