var arr = [44,55,22,1,5,17,89,13,48,102]


func mergeSort(arr: inout [Int])->[Int]{
    guard arr.count>1 else {
        return arr
    }
    
    var arrOne = Array(arr[0..<arr.count/2])
    var arrTwo = Array(arr[arr.count/2..<arr.count])
    
    arrOne = mergeSort(arr: &arrOne)
    arrTwo = mergeSort(arr: &arrTwo)
    return merge(left: &arrOne, right: &arrTwo)
}

func merge(left: inout [Int], right: inout [Int])->[Int]{
    var mergedArr = [Int]()
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedArr.append(left.removeFirst())
        }else{
            mergedArr.append(right.removeFirst())
        }
    }
    
    
    return mergedArr + left + right
}


print(mergeSort(arr: &arr))

