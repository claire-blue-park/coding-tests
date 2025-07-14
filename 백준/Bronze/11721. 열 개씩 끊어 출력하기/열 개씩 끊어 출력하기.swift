import Foundation

let input = readLine()!
let characters = Array(input)

for i in stride(from: 0, to: characters.count, by: 10) {
    let endIndex = min(i + 10, characters.count)
    let chunk = String(characters[i..<endIndex])
    print(chunk)
}