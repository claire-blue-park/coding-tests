import Foundation

func solution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    
    var score: [String: Int] = [:]
    for i in 0..<name.count {
        score[name[i]] = yearning[i]
    }
    
    var totalScore: [Int] = []
    
    for i in 0..<photo.count {
        var value = 0
        for j in 0..<photo[i].count {
            if let temp = score[photo[i][j]] {
                value += temp
            }
        }
        totalScore.append(value)
    }
    
    return totalScore
}