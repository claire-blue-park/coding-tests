import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let _ = Int(readLine()!)!
    var dis = readLine()!.split(separator: " ").map{ Int($0)! }
    dis.sort()
    print((dis.last! - dis.first!) * 2)
}