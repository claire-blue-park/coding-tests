import Foundation

func solution(_ numbers:[Int]) -> Double {
    
    let outOfNumber = -1.0
    let outOfLength =  -2.0
    
    guard 1 <= numbers.count && numbers.count <= 100 else {
        return outOfLength
    }
    
    var sum = 0
    
    for index in 0...numbers.count - 1 {
        
        let number = numbers[index]
        
        guard 0 <= number && number <= 1000 else {
            return outOfNumber
        }

        sum += numbers[index]
    }
    
    let result = Double(sum) / Double(numbers.count)
    
    return result
}