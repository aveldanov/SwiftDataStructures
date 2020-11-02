class TreeNode<T>{
    var value : T
    var childeren = [TreeNode]()
    init(_ value: T) {
        self.value = value
    }
    
    
    // function to add a node
    func add(_ child:TreeNode){
        childeren.append(child)
    }
    
}

// create a tree
let beverages = TreeNode("Beverages")

let hot = TreeNode("Hot")
let cold = TreeNode("Cold")

let tea = TreeNode("Tea")
let coffee = TreeNode("Coffee")


let soda = TreeNode("Soda")
let milk = TreeNode("Milk")
beverages.add(hot)
beverages.add(cold)

hot.add(tea)
hot.add(coffee)
cold.add(soda)
cold.add(milk)



extension TreeNode{
    
    func forEachDepthFirst(_ visit:(TreeNode)->Void){
        visit(self)
        childeren.forEach{
            $0.forEachDepthFirst(visit)
        }
        
    }
    
    
}






beverages.forEachDepthFirst { print($0.value)
}
















/*


//CLOSURES

func calc( a: Int, b:Int, operation: (Int,Int)->Int)->Int{
    
    return operation(a,b)
}





func add(x:Int, y:Int)->Int{
    
    return x+y
}


func multiply(x:Int, y:Int)->Int{
    
    return x*y
}

// ----->
calc(a: 3, b: 3){$0*$1}

calc(a: 2, b: 3) { (x, y) -> Int in
    x*y
}
*/
