import UIKit

var array = Array(1...10000)

func binarySearchFindIndex(array: [Int], target: Int) -> Int {
    var startIndex = 0
    var endIndex = array.count - 1
    var times = 0
    
    var targetIndex = (startIndex + endIndex) / 2
    guard targetIndex < (array.count - 1) else {
        return 0
    }
    
    while array[targetIndex] != target {
        // calculated times
        times += 1
        
        if array[targetIndex] > target {
            //left
            endIndex = targetIndex - 1
        } else {
            //right
            startIndex = targetIndex + 1
        }
        targetIndex = startIndex + (endIndex - startIndex) / 2
        print("target index is \(targetIndex)")
    }
    print("find target = \(array[targetIndex]), at index = \(targetIndex), times = \(times)")
    return targetIndex
}

binarySearchFindIndex(array: array, target: 4999)
