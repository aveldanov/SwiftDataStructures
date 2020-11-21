/*
 
 Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:

 Only one letter can be changed at a time.
 Each transformed word must exist in the word list.
 Note:

 Return 0 if there is no such transformation sequence.
 All words have the same length.
 All words contain only lowercase alphabetic characters.
 You may assume no duplicates in the word list.
 You may assume beginWord and endWord are non-empty and are not the same.
 Example 1:

 Input:
 beginWord = "hit",
 endWord = "cog",
 wordList = ["hot","dot","dog","lot","log","cog"]

 Output: 5

 Explanation: As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
 return its length 5.
 Example 2:

 Input:
 beginWord = "hit"
 endWord = "cog"
 wordList = ["hot","dot","dog","lot","log"]

 Output: 0

 Explanation: The endWord "cog" is not in wordList, therefore no possible transformation.
 */



class Solution {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        if !wordList.contains(endWord){
            return 0
        }
        let a2z = "abcdefghijklmnopqrstuvwxyz"
         var beginSet = Set<String>()
         var endSet = Set<String>()
         var len = 1
         var visit = Set<String>()
         
         beginSet.insert(beginWord)
         endSet.insert(endWord)

        print(beginSet)
        print(endSet)
        while !beginSet.isEmpty && !endSet.isEmpty{
            if beginSet.count > endSet.count{
                swap(&beginSet, &endSet)
            }
            var temp = Set<String>()
            
            for word in beginSet{
                var charsArr = Array(word)
                for i in 0..<charsArr.count{
                    for char in a2z{
                        let old = charsArr[i]
                        charsArr[i] = char
                        let target = String(char)
                        
                        if endSet.contains(target){
                            return len + 1
                        }
                        if !visit.contains(target) && wordList.contains(target){
                            temp.insert(target)
                            visit.insert(target)
                        }
                        charsArr[i] = old
                    }
                    
                    
                }
                
                
            }
            
            beginSet = temp
            len+=1
        }
        
        
        
        return len
    }
}



let solution = Solution()

print(solution.ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]))


//print(solution.ladderLength("hit", "cog", ["hot","dot","dog","lot","log"]))



/*
 "hit"
 "cog"
 ["hot","dot","dog","lot","log"]
 
 "a"
 "c"
 ["a","b","c"]
 
 
 
 print(solution.ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]))
 */
