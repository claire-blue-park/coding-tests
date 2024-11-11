func solution(_ n:Int) -> Int {
    
    var sum = 0

    if n == 0 { return 0 }
    
    for number in 1...n {
        if ( n % number == 0 ) { sum += number }
    }
    
    return sum
}