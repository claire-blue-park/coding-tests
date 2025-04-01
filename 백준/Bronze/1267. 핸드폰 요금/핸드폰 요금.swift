    let n = Int(readLine()!)!
    let calls = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var y = 0 // 영식의 가격
    var m = 0 // 민식의 가격
    
    for call in calls {
        y += (call / 30 + 1) * 10
        m += (call / 60 + 1) * 15
    }
    
    if y > m {
        print("M \(m)")
    } else if y == m {
        print("Y M \(m)")
    } else {
        print("Y \(y)")
    }