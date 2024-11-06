import Foundation

func solution(_ n:Int) -> Int {
    
    let outOfRange = -1 
    
    guard 0 < n && n <= 1000 else {
        return outOfRange
    }
    
    
    var sum = 0
    for number in 0...n {
        
        if number % 2 == 0 { 
            sum += number 
        }
    }
    return sum
    
}