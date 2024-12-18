import Foundation

var ans = Int.max
var visited = [Bool]()

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    visited = Array(repeating: false, count: words.count)
    dfs(begin: begin, target: target, words: words, count: 0)
    
    return ans == Int.max ? 0 : ans
}

func dfs(begin: String, target: String, words: [String], count: Int) {
    if begin == target {
        ans = ans > count ? count : ans
        return       
    } else {
        for i in 0..<words.count {
            if visited [i] {
                continue            
            }
            
            let begins = Array(begin).map{ String($0) }
            let wordCache = Array(words[i]).map{ String($0)}
            var differences = 0
            
            for j in 0..<begin.count {
                if begins[j] != wordCache[j] {
                    differences += 1
                }
            }
            
            if differences == 1 {
                visited[i] = words[i] == target ? false : true
                dfs(begin: words[i], target: target, words: words, count: count + 1)
            }
        }
    }
}