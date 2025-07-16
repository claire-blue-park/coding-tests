import Foundation

let n = Int(readLine()!)!

var arr: [String] = []
for _ in 0..<n {
    let input = String(readLine()!)
    arr.append(input)
}

arr.sort {
    if $0.count != $1.count {
        return $0.count < $1.count 
    } else {
        var numA = 0
        for char in $0 {
            if char.isNumber {
                numA += Int(String(char))!
            }
        }
        var numB = 0
        for char in $1 {
            if char.isNumber {
                numB += Int(String(char))!
            }
        }
        
        let gap = numA - numB
        if gap != 0 {
            return numA < numB
        }
        
        return $0 < $1
    }
}

for serial in arr {
    print(serial)
}