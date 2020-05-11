

// Power func



func power(n:Int, p:Int)->Int{
  
  if p == 0{
    return 1
  }
  
  
  return n*power(n: n, p: p-1)
  
}



let result = power(n: 2, p: 3)

print(result)




//func factorial(n: Int)->Int{
//
//  if  n == 0 {
//    return 1
//  }
//
// return n*factorial(n: n-1)
//
//}
//
//
//
//
//print(factorial(n: 5)) // 1* 2*3 * 4* 5
