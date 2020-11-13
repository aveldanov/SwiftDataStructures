var arr = [1,3,5,6,8,9,11,23,44,55,66,77,98]



func binarySearch(arr:[Int], searchItem: Int)->Bool{
    var startIndex = 0
    var endIndex = arr.count-1
    var midIndex = 0
    
    
    while startIndex<=endIndex {
        midIndex = (startIndex+endIndex)/2
        if arr[midIndex] == searchItem{
            return true
        }else if searchItem < arr[midIndex]{
            endIndex = midIndex-1
        }else{
            startIndex = midIndex + 1
        }
        
    }
    
    
    return false
}


binarySearch(arr: arr, searchItem: 3)
