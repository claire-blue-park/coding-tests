func solution(_ n:Int64) -> [Int] {
    guard 0 < n && n <= 10000000000 else {
        return []
    }
    
    var number = n
    var results: [Int] = []
    
    while number > 0 {
        let left = Int(number % 10) 
        results.append(left)
        number /= 10
    }
    
    return results
}