/*
 
 
 Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
 
 Examples:
 
 s = "leetcode"
 return 0.
 
 s = "loveleetcode"
 return 2.
 */


class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character:Int]()
        for item in s {
            dict[item] = dict[item] != nil ? dict[item]! + 1 : 1
        }
        for (index,char) in s.enumerated(){
            print(index,char)
            if dict[char] == 1{
                return index
            }
        }
        return -1
    }
}


let solution = Solution()

solution.firstUniqChar("totototototo")
