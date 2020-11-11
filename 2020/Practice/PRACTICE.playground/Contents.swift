var arr = [55,44,33,66,22,77,88,1,10]


func bubbleSort(arr: inout [Int])->[Int]{
    
    for i in 0..<arr.count{
        for j in 0..<arr.count {
            
            if arr[j] > arr[i]{
                
                arr.swapAt(i, j)
            }
            
        }
    }
    
    
    return arr
    
}


print(bubbleSort(arr: &arr))
