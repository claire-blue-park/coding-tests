func solution(_ n:Int64) -> Int64 {
    
    var digits: [Int] = []
    var number = Int(n)
    
    while number > 0 {
        digits.append(number % 10)
        number /= 10
    }
    
    let digitsString = digits.sorted(by: >).map(String.init).joined()
    
    return Int64(digitsString) ?? 0
}