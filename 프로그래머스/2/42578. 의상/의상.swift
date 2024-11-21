
import Foundation


func solution(_ clothes:[[String]]) -> Int{
    
    var clothesTable = [String: Int]()
    
    for item in clothes {
        let category = item[1]
        clothesTable[category] == nil 
        ? (clothesTable[category] = 1)
        : (clothesTable[category]! += 1) 
    }

    return getNumberOfCases(table: clothesTable)
}

func getNumberOfCases(table: Dictionary<String, Int>) -> Int {
    
    var numberOfCase = 1
    
    for number in table {
        numberOfCase = numberOfCase * (number.value + 1)
    }
    
    return numberOfCase - 1
}