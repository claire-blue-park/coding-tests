import Foundation

func solution(_ n:Int) -> Int {
    
    guard 3 <= n && n <= 1000000 else {
        return -1
    }
    
    var xResult = 0
    
    Loop : for x in 1...n {
        if n % x == 1 {
            xResult = x
            break Loop
        }
    }
    return xResult
}