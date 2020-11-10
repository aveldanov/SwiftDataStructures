class TreeNode<T>{
    var left: TreeNode?
    var right: TreeNode?
    var value: T
    init(_ value: T) {
        self.value = value
    }
    
    func treeTraversal(visit:(_ value:T)->(Void)){
        visit(value)
        
        left?.treeTraversal(visit: visit)
        right?.treeTraversal(visit: visit)
        
    }
    
    
}


/*
 1
 2 3
    4 5
 
 
 */


let one = TreeNode(1)
let two = TreeNode(2)
let three = TreeNode(3)
let four = TreeNode(4)
let five = TreeNode(5)



one.left = two
one.right = three
three.left = four
three.right = five

