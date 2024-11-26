import Foundation

    private var path = [String]()
    private var visited = [Bool]()

func solution(_ originTickets:[[String]]) -> [String] {
    
    var tickets = originTickets.sorted{ $0[1] < $1[1] }
    
    visited = Array(repeating: false, count: tickets.count)
    
    _ = dfs(current: "ICN", route: "ICN", tickets: tickets, count: 0)
    
    return path
}

func dfs(current: String, route: String, tickets: [[String]], count: Int) -> Bool {
    if(count == tickets.count) {
        path = route.split(separator: ",").map { String($0) }        
        return true
    }
    
    for i in 0..<tickets.count {
        if !visited[i] && tickets[i][0] == (current) {
            visited[i] = true
            if dfs(current: tickets[i][1], 
                   route: route + "," + tickets[i][1], 
                   tickets: tickets, 
                   count: count + 1){
                return true 
            }
            visited[i] = false
        }
    }
    
    return false
}