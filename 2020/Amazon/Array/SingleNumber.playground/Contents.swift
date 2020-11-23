/*
 
 
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

 Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?

  

 Example 1:

 Input: nums = [2,2,1]
 Output: 1
 Example 2:

 Input: nums = [4,1,2,1,2]
 Output: 4
 Example 3:

 Input: nums = [1]
 Output: 1
 */

//class Solution {
//    func singleNumber(_ nums: [Int]) -> Int {
//
//        var dict = [Int:Int]()
//        for item in nums{
//            dict[item] = dict[item] != nil ? dict[item]!+1 : 1
//        }
//
//
//        return dict.sorted{ $0.0 < $1.0 }.filter{$0.1==1}.map{$0.0}[0]
//    }
//}

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {

        var dict = [Int:Int]()
        for item in nums{
            if dict[item] != nil{
                dict[item]! -= 1
            }else{
                dict[item] = 1
            }
        }
        
        for (k,v) in dict{
            if v == 1{
                return k
            }
        }
        
        return -1
    }
}




let solution = Solution()

print(solution.singleNumber([4,1,2,1,2]))
