struct Queue<Element>{
    
    var elements = [Element]()
//    var isEmpty: Bool{
//        return elements.isEmpty
//    }
    mutating func enqueue(_ value: Element) -> Bool{
        elements.append(value)
        return true
    }
    
    mutating func dequeue()-> Element?{
        return elements.isEmpty ? nil : elements.removeFirst()
    }
    
}



class TreeNode<T>{
    var value : T
    var children = [TreeNode]()
    init(_ value: T) {
        self.value = value
    }
    
    
    // function to add a node
    func add(_ child:TreeNode){
        children.append(child)
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
let kefir = TreeNode("kefir")
let butter = TreeNode("butter")

beverages.add(hot)
beverages.add(cold)
hot.add(tea)
hot.add(coffee)
cold.add(soda)
cold.add(milk)
milk.add(kefir)
milk.add(butter)


extension TreeNode{
    
    func forEachDepthFirst(_ visit:(TreeNode)->Void){
        visit(self)
        children.forEach{
            $0.forEachDepthFirst(visit)
        }
    }
    
    
    func forEachLevelOrder(_ visit:(TreeNode)->Void){
        visit(self)
        var queue = Queue<TreeNode>()
        children.forEach {
            print("boom ",$0.value)
            queue.enqueue($0)
        }
        
        
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach{
                queue.enqueue($0)
            }
        }
    }
    
    func search(_ searchValue: T) -> TreeNode?{
        var result: TreeNode?

        forEachLevelOrder { (node) in
            if node.value == searchValue{
                result = node
            }
        }
        return result
    }
    
    
}






//beverages.forEachDepthFirst { print($0.value)
//}

beverages.forEachLevelOrder{
    print($0.value)
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
