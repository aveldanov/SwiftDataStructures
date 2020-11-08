
var arr = [44,5,7,8,33,55,77,99,102]

func bubbleSort(arr:[Int])->[Int]{
    
    var arr = arr
    
    print(arr)
    
    for i in 0..<arr.count{
        for j in 0..<arr.count{
            if arr[i]<arr[j]{
                //swap
//                let temp = arr[i]
//                arr[i] = arr[j]
//                arr[j] = temp
                arr.swapAt(i, j)
                
            }
        }
    }
    
    
    return arr
}


print(bubbleSort(arr: arr))
