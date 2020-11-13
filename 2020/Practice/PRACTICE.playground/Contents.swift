var arr = [66,44,33,22,77,1,9,17,35,32]


func bubbleSort(arr: inout[Int])->[Int]{
    
    for i in 0..<arr.count-1{
        for j in 0..<arr.count-1 {
            print(j)
            print("arr[j]",arr[j])
            print("arr[j+1]",arr[j+1])

            if arr[j] > arr[j+1]{
                arr.swapAt(j+1, j)
            }
            print(arr)

            print("")
        }
    }
    return arr
}


print(bubbleSort(arr: &arr))
