import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var width = 0, height = 0
    let sum = brown + yellow
    
    for i in 1...sum {
        if sum % i == 0 {
            width = sum / i
            height = i
        }
        
        if (width - 2) * (height - 2) == yellow {
            break
        }
    }
    
    return [width, height]
}