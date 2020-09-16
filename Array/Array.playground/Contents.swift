import UIKit

var target = [[1,2,3],[4,5,6]]
// [[1,4],[2,5],[3,6]]


func transpose(_ A: [[Int]]) -> [[Int]] {
    guard A.count > 0 else { return [] }
    guard A.first != nil else { return [] }
    
    var ans = [[Int]].init(repeating: [Int].init(repeating: 0, count: A.count), count: A[0].count)

    for i in 0..<A[0].count {
        for j in 0..<A.count {
            ans[i][j] = A[j][i]
        }
    }
    return ans
}

var newTarget = transpose(target)
print(newTarget)


func sumTwo(_ nums: [Int], target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[j] == target - nums[i] {
                return [i,j]
            }
        }
    }
    return []
}

func sumTwo2(_ nums: [Int], target: Int) -> [Int] {
    var hash = [Int:Int]()
    for (index, num) in nums.enumerated() {
        let result = target - num
        if let findIndex = hash[result], findIndex != index {
            return [findIndex, index]
        }
        hash[num] = index
    }
    return []
}
let result = sumTwo2([2,7,11,15], target: 9)


func sumTwo21(_ nums: [Int], target: Int) -> [Int] {
    var hash = [Int:Int]()
    for (idx, num) in nums.enumerated() {
        
        let result = target - num
        if let findIndex = hash[result], findIndex != idx {
            return [findIndex, idx]
        }
        hash[num] = idx
    }
    return []
}

