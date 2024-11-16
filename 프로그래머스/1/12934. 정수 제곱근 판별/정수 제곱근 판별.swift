func solution(_ n:Int64) -> Int64 {
    
    var result = -1
    
    Loop : for x in 1...n {
        if x * x == n {
            let xPlus1 = Int(x + 1)
            result = xPlus1 * xPlus1
            break Loop
        }
    }
    
    return Int64(result)
}