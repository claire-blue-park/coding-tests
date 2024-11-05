import Foundation

func solution(_ angle:Int) -> Int {
    
    let outOfRange = -1
    let acuteAngle = 1
    let rightAngle = 2
    let obtuseAngle = 3
    let straightAngle = 4
    let reflexAngle = 5
    
    switch angle {
        case 1..<90 : return acuteAngle
        case 90 : return rightAngle
        case 91..<180 : return obtuseAngle
        case 180 : return straightAngle
        case 181..<360 : return reflexAngle
        default : return outOfRange
    }
}