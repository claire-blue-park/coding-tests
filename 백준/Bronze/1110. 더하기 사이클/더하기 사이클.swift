import Foundation

let input = readLine()!
let original = Int(input)!
var current = original 
var count = 0

repeat {
    let formattedNumber = String(format: "%02d", current)
    

    let firstDigit = Int(String(formattedNumber.first!))!  
    let secondDigit = Int(String(formattedNumber.last!))!
  
    let sum = firstDigit + secondDigit
    
    current = (secondDigit * 10) + (sum % 10)
    
    count += 1

} while current != original 
print(count)