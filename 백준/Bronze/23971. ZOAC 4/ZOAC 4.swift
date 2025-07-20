import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var h = input[0] 
var w = input[1]
var n = input[2] + 1
var m = input[3] + 1

var answer = 0
let x = w / m
let y = h / n

let tmpX = w % m != 0 ? 1 : 0
let tmpY = h % n != 0 ? 1 : 0

print((x + tmpX) * (y + tmpY))