/*
 
 Given an m x n board and a word, find if the word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where "adjacent" cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

  

 Example 1:


 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true
 Example 2:


 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true
 Example 3:


 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false
 */



class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        for i in 0..<board.count{
            for j in 0..<board[i].count{
                if board[i][j] == Array(word)[0] && dfs(board: &board, i: i, j: j, count: 0, word: word){
                    return true
                }
            }
        }
        
        return false
        
    }
    
    
    func dfs(board:inout [[Character]],i:Int, j:Int,count:Int,word:String )->Bool{
        if count == word.count{
            return true
        }
        if (i < 0 || i>=board.count || j < 0 || j >= board[i].count || board[i][j] != Array(word)[count]){
            return false
        }
        var temp = board[i][j] //A
        print(temp)
        board[i][j] = " "
        var found = Bool()
              print(board)

        found =
            dfs(board: &board, i: i+1, j: j, count: count+1, word: word) ||
            dfs(board: &board, i: i-1, j: j, count: count+1, word: word) ||
            dfs(board: &board, i: i, j: j+1, count: count+1, word: word) ||
            dfs(board: &board, i: i, j: j-1, count: count+1, word: word)
        print(found)
        board[i][j] = temp
        
//        print(board)
        return found
    }
}


let solution = Solution()

print(solution.exist([
                        ["A","B","C","E"],
                        ["S","F","C","S"],
                        ["A","D","E","E"]],
                     
                     "ASFDES"))


/*
 
 [["A","B","C","E"],
  ["S","F","C","S"],
  ["A","D","E","E"]]
 "ABCB"
 
 false
 
 
 
 
 print(solution.exist([
                         ["A","B","C","E"],
                         ["S","F","C","S"],
                         ["A","D","E","E"]],
                      
                      "ABCCED")) // true
 
 
 */
