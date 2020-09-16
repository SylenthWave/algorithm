import UIKit

var nums = Array(1...10000)

func binarySearchFindIndexByRecursive(array: [Int], target: Int) -> Int {
    var times = 0
    func binarySearchRecursvice(left: Int, right: Int) -> Int {
        times += 1
        print("times = \(times)")
        
        
        let changeIndex = left + (right - left) / 2
        
        if array[changeIndex] == target {
            print("target = \(array[changeIndex])")
            return array[changeIndex]
        }
        
        print("changeIndex = \(changeIndex)")
        if array[changeIndex] > target {
            return binarySearchRecursvice(left: left, right: changeIndex - 1)
        } else {
            return binarySearchRecursvice(left: changeIndex + 1, right: right)
        }
    }
    return binarySearchRecursvice(left: 0, right: array.count - 1)
}

binarySearchFindIndexByRecursive(array: nums, target: 5006)
