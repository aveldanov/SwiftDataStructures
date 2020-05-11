

struct Queue<Element>{
  
  var elements:[Element] = []
  
  mutating func enqueue(_ value: Element )->Bool{
    elements.append(value) // 1->2->3->
    return true
  }
  
  var isEmpty: Bool{
    return elements.isEmpty
    
  }
  
  mutating func dequeue() -> Element?{
    
    return isEmpty ? nil : elements.removeFirst()
    
  }
  
}


//extension Queue: CustomStringConvertible{
//  var description: String {
//    return "STRING:" + String(describing: elements)
//  }
//
//}



//
//class TreeNode<T>{
//  var value: T
//  var childeren: [TreeNode] = []
//  var parent: TreeNode?
//
//  init(_ value: T){
//    self.value = value
//  }
//
//  func add(_ child: TreeNode){
//    childeren.append(child)
//    child.parent = self
//  }
//}



class TreeNode<T>{
  var value: T
  var children: [TreeNode] = []
  init(_ value: T){
    self.value = value
  }
  
  func add(_ child: TreeNode){
    children.append(child)
  }
  
  
}





extension TreeNode where T: Equatable{
  
  func FDT(_ visit: (TreeNode)->Void){

    visit(self)

    children.forEach{

      $0.FDT(visit)
    }


  }
  
  
  func DOT(_ visit: (TreeNode)->Void){
    visit(self)
    var queue = Queue<TreeNode>()
    // two top
    
    children.forEach{
      queue.enqueue($0)
    }
    
    while let node = queue.dequeue(){
      visit(node)
      node.children.forEach{
        queue.enqueue($0)
      }
      
      
    }
    
    
  
    
    
    
  }
  
  func search(_ value:T)->TreeNode?{
      
      var result: TreeNode?
      
      DOT { (node) in
        if node.value == value{
          
          result = node
        }
      }
      
      return result
    }
  
  
  
  // FIRST DEPTH TRAVERSAL
//  func forEachDepthFirst(_ visit: (TreeNode) -> Void){
//    print(visit(self)) //return top node
//    childeren.forEach {
//
////      print($0.value)
//      $0.forEachDepthFirst(visit)
//    }
//
//  }
  
  
  /*
           root
         /          \
       one         two
     /   \       /   \
  three  four  five  six
  */

  
  
  // LEVEL ORDER TRAVERSAL
//  func forEachLevelOrder(_ visit: (TreeNode) -> Void){
//    visit(self)
//
//    var queue = Queue<TreeNode>()
//
//    // top 2 elements
//    childeren.forEach {
//      // put them in queue
//
//      queue.enqueue($0) // 1->2->
//      print("QUEUED:", queue.elements.last?.value)
//    }
//
//    while let node = queue.dequeue() {
//      visit(node) // 1->3 and 4
//      print("Dequeue",node.value) // 1 and 2 | 2
//      node.childeren.forEach { queue.enqueue($0); print("QUEUED:", queue.elements.last?.value)} // 2-> 3 and 4
//
//
//    }
//  }
//
//
//  func search(_ value: T) -> TreeNode?{
//
//    var result: TreeNode?
//
//
//    forEachLevelOrder { (node) in
//      if node.value == value{
//
//        result = node
//      }
//    }
//
//    return result
//
//  }
  
  
  
}



let root = TreeNode<String>("RootNode")


let oneNode = TreeNode<String>("oneNode")
let twoNode = TreeNode<String>("twoNode")
let threeNode = TreeNode<String>("threeNode")
let fourNode = TreeNode<String>("fourNode")
let fiveNode = TreeNode<String>("fiveNode")
let sixNode = TreeNode<String>("sixNode")



root.add(oneNode)
root.add(twoNode)
oneNode.add(threeNode)
oneNode.add(fourNode)
twoNode.add(fiveNode)
twoNode.add(sixNode)

//root.forEachDepthFirst {
//  print($0.value)
//}

//root.FDT {
//  print($0.value)
//}

//root.forEachDepthFirst()

root.DOT {
  print("RESULT:")
  print($0.value)
  print("=====")

}

//if let searchResult = root.search("threeNode"){
//  print(searchResult.value)
//
//}


if let searchResult = root.search("threeNode"){
  print(searchResult.value)
}

/*
          root
        /          \
      one         two
    /   \       /   \
 three  four  five  six
 */

