/*
 Given an array of characters chars, compress it using the following algorithm:

 Begin with an empty string s. For each group of consecutive repeating characters in chars:

 If the group's length is 1, append the character to s.
 Otherwise, append the character followed by the group's length.
 The compressed string s should not be returned separately, but instead be stored in the input character array chars. Note that group lengths that are 10 or longer will be split into multiple characters in chars.

 After you are done modifying the input array, return the new length of the array.

  
 Follow up:
 Could you solve it using only O(1) extra space?

  

 Example 1:

 Input: chars = ["a","a","b","b","c","c","c"]
 Output: Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]
 Explanation: The groups are "aa", "bb", and "ccc". This compresses to "a2b2c3".
 Example 2:

 Input: chars = ["a"]
 Output: Return 1, and the first character of the input array should be: ["a"]
 Explanation: The only group is "a", which remains uncompressed since it's a single character.
 Example 3:

 Input: chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
 Output: Return 4, and the first 4 characters of the input array should be: ["a","b","1","2"].
 Explanation: The groups are "a" and "bbbbbbbbbbbb". This compresses to "ab12".
 Example 4:

 Input: chars = ["a","a","a","b","b","a","a"]
 Output: Return 6, and the first 6 characters of the input array should be: ["a","3","b","2","a","2"].
 Explanation: The groups are "aaa", "bb", and "aa". This compresses to "a3b2a2". Note that each group is independent even if two groups have the same character.
 */



class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        
        var arr = [String]()
        var j = 0
        var count = 0
        var arrayInt = [Int]()

        while j<chars.count {
            let current = chars[j]
            while j<chars.count && chars[j] == current {
                count+=1
                j+=1
            }
            print("count",count)
            if count > 1{
                
                arrayInt.append(count%10)
                while count >= 10 {
                    count = count/10
                  arrayInt.insert(count%10, at: 0)
                }
                
                var arrStr = arrayInt.map{String($0)}
                print("arrint",arrStr)
                
                arr.append(String(current))
                arr+=arrStr
            }else{
                arr.append(String(current))
            }
            count = 0
            arrayInt = [Int]()
           print(arr)
        }
        
        chars = arr.map{Character($0)}
        return chars.count
    }
}


let solution = Solution()
var arrr = ["a","a","a","b","b","a","a"].map{
    Character($0)
}
print(solution.compress(&arrr))


/*
 
 class Solution {
     func compress(_ chars:  [Character]) -> Int {
         var chars = chars
         guard chars.count > 0 else {
             return 0
         }
         var index = 0
         var i = 0
         var count = ""
         var j = 0
         while i<chars.count {
              j = i
             while j<chars.count && chars[j] == chars[i]{
                 j+=1
             }
             index+=1
             chars[index] = chars[i]
             if j - i > 1{
                 count = String(j-i)
                 for char in count{
                     print(char)
                     chars[index] = char

                     index+=1
                 }
             }
             
             
             i = j
         }
         

         return index
     }
 }
 */
