    import Foundation    

    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var answer = 0
    
    if input[0] == input[1] && input[1] == input[2] {
        answer = 10000 + input[0] * 1000
        
    } else if input[0] == input[1] {
        answer = 1000 + input[1] * 100
    } else if input[0] == input[2] {
        answer = 1000 + input[2] * 100
    } else if input[1] == input[2] {
        answer = 1000 + input[1] * 100
    } else {
        answer = input.max()! * 100
    }
    
    print(answer)
