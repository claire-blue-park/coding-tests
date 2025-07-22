import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]

let nums = readLine()!.split(separator: " ").map{ Int($0)! }

var result = 0

for i in 0..<n {           
    for j in (i + 1)..<n {   
        for k in (j + 1)..<n { 
            let sum = nums[i] + nums[j] + nums[k]
            if sum <= m {
                result = max(result, sum)
            }
        }
    }
}

print(result)