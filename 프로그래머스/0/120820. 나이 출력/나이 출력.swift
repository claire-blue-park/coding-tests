import Foundation

func solution(_ age:Int) -> Int {
    
    let baseYear = 2022
    let isHumanLife = 0 < age && age <= 120
    let outOfLifeRange = -1
    
    if isHumanLife {
        return 2022 - (age - 1) // 태어나자마자 1살
    } else {
        return outOfLifeRange
    }
}