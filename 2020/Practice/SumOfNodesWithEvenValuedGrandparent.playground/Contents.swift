
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

        func sumEvenGrandparent(_ root: TreeNode?) -> Int {
            if root == nil{
                return 0
            }
            
            var current = root
            if (current!.val % 2 == 0) && (current?.left?.left != nil){
                sum += (current?.left?.left!.val)!
            }
            if (current!.val % 2 == 0) && (current?.left?.right != nil){
                sum += (current?.left?.right!.val)!
            }
            if (current!.val % 2 == 0) && (current?.right?.left != nil){
                sum += (current?.right?.left!.val)!
            }
            if (current!.val % 2 == 0) && (current?.right?.right != nil){
                sum += (current?.right?.right!.val)!
            }
            sumEvenGrandparent(current?.left)
           sumEvenGrandparent(current?.right)
            
            return sum
        }
    }



/*
       6
      / \
     7   8
     /\   /\
    2 7   1 3
   /  /\     \
  9   1 4     5

*/



let six = TreeNode(6)
let seven1 = TreeNode(7)
let eight = TreeNode(8)
let two = TreeNode(2)
let seven2 = TreeNode(7)
let nine = TreeNode(9)
let one1 = TreeNode(1)
let four = TreeNode(4)
let one2 = TreeNode(1)
let three = TreeNode(3)
let five = TreeNode(5)




six.left = seven1
six.right = eight
seven1.left = two
seven1.right = seven2
two.left = nine
seven2.left = one1
seven2.right = four
eight.left = one2
eight.right = three
three.right = five






let solution = Solution()

print(solution.sumEvenGrandparent(six))

//six.treeInOrderTraversal{
//    print($0)
//}



