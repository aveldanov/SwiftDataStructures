
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?){
          self.val = val
          self.left = left
          self.right = right
      }
    
    
    func treeInOrderTraversal(visit: (Int)->(Void)){
        left?.treeInOrderTraversal(visit: visit)
        visit(val)
        right?.treeInOrderTraversal(visit: visit)
    }
    
    
    
  }
 
class Solution {
    var countL = 0
    var countR = 0
    func maxDepth(_ root: TreeNode?) -> Int {
//
//        if root == nil{
//            return 0
//        }
//
////        let left = maxDepth(root?.left)
////        let right = maxDepth(root?.right)
////        print("left",left)
////        print("right",right)
//        var maxLevel = 0
//        var queue = [root]
//        while !queue.isEmpty {
//            maxLevel+=1
//            print("BOOM")
//            for i in 0..<queue.count{
//                print("q.count", queue.count)
//                let current = queue.removeFirst() //[] -> [20]
//                print("curr", current?.val)
//                if let leftCurrent = current?.left{
//                    queue.append(leftCurrent) // [9]
//                }
//
//                if let rightCurrent = current?.right{
//                    queue.append(rightCurrent) // [9,20 ]
//                }
//
//            }
//
//
//
//        }
//
//
//        return maxLevel
        //KINDA:
//        if root == nil{
//            return 0
//        }
//
//        if root?.left != nil{
//            countL+=1
//        }
//        if root?.right != nil{
//            countR+=1
//        }
//
//        maxDepth(root?.left)
//
//     maxDepth(root?.right)
        
        
        return root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right))+1
        
    }
}



/*
 3
/ \
9  20
 /  \
15   7
    5
 */

let three = TreeNode(3)
let nine = TreeNode(9)
let twenty = TreeNode(20)
let fifteen = TreeNode(15)
let seven = TreeNode(7)
let five = TreeNode(5)

three.left = nine
three.right = twenty
twenty.left = fifteen
twenty.right = seven
seven.left = five

let solution = Solution()

//
//three.treeInOrderTraversal{
//    print($0)
//}

print(solution.maxDepth(three))
