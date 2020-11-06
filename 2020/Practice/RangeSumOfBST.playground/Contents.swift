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
    var sum = 0
      func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        if root == nil{
            return 0
        }
        
        if root!.val >= L && root!.val <= R{
            
            sum+=root!.val
        }
        
        rangeSumBST(root?.left, L, R)
        rangeSumBST(root?.right, L, R)
        
        return sum
        
      }
  }

  
  /*
   
      10
   5     15
 3   7     18

   
   
   
   */
  
  
  
  let three = TreeNode(3)
  let ten = TreeNode(10)
  let fifteen = TreeNode(15)

  let eighteen = TreeNode(18)
  let five = TreeNode(5)
  let seven = TreeNode(7)


  ten.left = five
  ten.right = fifteen
  five.left = three
  five.right = seven
  fifteen.right = eighteen


  let solution = Solution()

  //
  //three.treeInOrderTraversal{
  //    print($0)
  //}

  print(solution.rangeSumBST(ten, 7, 15))
