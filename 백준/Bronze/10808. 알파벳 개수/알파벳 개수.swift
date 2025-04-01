import Foundation

let str = readLine()!
    
var vis: [Int] = .init(repeating: 0, count: 26)
for element in str {
    vis[Int(element.asciiValue!) - Int(UnicodeScalar("a").value)] += 1
}
    
print(vis.map{ String($0) }.joined(separator: " "))