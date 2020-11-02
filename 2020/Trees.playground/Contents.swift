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


let beverages = TreeNode<String>("Beverages")

let hotBev = TreeNode<String>("hotBev")

let coldBev = TreeNode<String>("coldBev")


beverages.add(hotBev)
beverages.add(coldBev)
