func solution(_ x:Int, _ n:Int) -> [Int] {
    
    guard -10000000 <= x && x <= 10000000 && n <= 1000 else {
        return []
    }
    
    return (1...n).map { x * $0 }
}