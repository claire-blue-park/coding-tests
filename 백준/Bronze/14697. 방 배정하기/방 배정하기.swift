import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let a = input[0], b = input[1], c = input[2], n = input[3]

var available = false

Loop: for i in 0...(n/a) {
    for j in 0...((n - a * i) / b) {

        let ai = a * i 
        let bj = b * j

        let rest = n - (ai + bj)

        if rest >= 0 && rest % c == 0 {
            available = true
            break Loop
        }

    }
}

print(available ? "1" : "0")