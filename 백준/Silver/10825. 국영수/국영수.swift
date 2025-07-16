import Foundation

let n = Int(readLine()!)!

struct Student {
    let name: String
    let korean: Int
    let english: Int
    let math: Int
}

var students: [Student] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    students.append(Student(name: input[0], 
    korean: Int(input[1])!, 
    english: Int(input[2])!, 
    math: Int(input[3])!))
}

students.sort { (a, b) in
    if a.korean != b.korean {
        return a.korean > b.korean
    }

    if a.english != b.english {
        return a.english < b.english
    }

    if a.math != b.math {
        return a.math > b.math
    }

    return a.name < b.name
}

for student in students {
    print(student.name)
}