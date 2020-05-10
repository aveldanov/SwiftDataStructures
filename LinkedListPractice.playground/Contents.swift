
struct LinkedList<Value>{
  
  
  var head: Node<Value>?
  var tail: Node<Value>?
  var isEmpty:Bool{
    return head == nil
  }
  
  
  // PUSH
  mutating func push(_ value: Value)  {
    head = Node(value: value, next: head)

//    head = Node(value: value, next: head)  // nil | 1->nil | 2->1->nil
    
//    // check if list empty
//    if tail == nil{
////      print("tail:", tail)
//      tail = head // nil => 1-> ?
////    print("tail:", tail)
//
//    }
    
//    if head == nil{
//
//      head = Node(value: value, next: head)
//    }else{ //1->nil
//      head = Node(value: value, next: head)
//
//
//    }
    
  }
  
  // APPEND
  mutating func append(_ value: Value){
    
//    guard !isEmpty else {
//      print("EMPTY->  pushing: ", value)
//      push(value)
//      return
//    }
//
//    let node = Node(value: value)
//    print("value", value) // 3
//    print("tail.next",tail?.next) // nil
//    print("tail",tail) // 2
//    print("")
//    tail?.next = node //  nil-> 3
//    print("tail.next",tail?.next) // 3
//    tail = node // 3
//
//    print("tail",tail) // 3
//    print("tail.next",tail?.next)
//    print("head", head)
//    print("")
    
    if tail == nil{
      head = Node(value: value, next: head) // 1->nil
      tail = head
    }else{ // 1->2->nil | 1->2->3nil
      
      let newNode = Node(value: value, next: nil) // 1->nil | 2->nil
      tail?.next = newNode // 1->nil | 1-> 2-> nil
      tail = newNode
      
    }
    
    

  }
  
// Find a node
  func findNodeAtIndex(at index:Int)-> Node<Value>?{
    
    var currentIndex = 0
    var currentNode = head
    
    while currentNode != nil && currentIndex < index {
      currentNode = currentNode?.next // 4->3->2->1->nil | 3->2->1->nil
      currentIndex += 1
    }
    return currentNode
    
  }
  
  func insertAtIndex(_ value: Value, after node: Node<Value>)  { // 3->
    node.next = Node(value: value, next: node.next) // 3-> 5-> 2->1->nil
  }
  
  
  // Pop
  
  mutating func pop()->Value?{
    
    defer{
      head = head?.next

      if head == nil{
        tail = nil
      }
      
    }
    
    return head?.value
  }
  
  
  
  // Remove Last
  
  mutating func removeLast()->Value?{
    
    guard let head = head else {
      return nil
    }
    
    guard head.next != nil else {
      return pop()
    }
    // 3->2->1->nil
    var prevNode = head // 3->
    var currentNode = head // 3->
    // looking when NEXT = nil
    while let next = currentNode.next{
      prevNode = currentNode // 3-> | 2-> |
      currentNode = next // 2-> | 1-> |
    }
    
    prevNode.next = nil // 1-> => nil
    tail = prevNode // 2->

    
    return currentNode.value // 1->
    
  }
  
  
  
  mutating func removeAfter(after node: Node<Value>)->Value?{
    // 4->3->2->1->nil
    
    defer {
      if node.next === tail{ // say 2->1->nil
        tail = node   // 2->nil

      }
      // skipping a node
      node.next = node.next?.next
      
    }
    
    return node.next?.value
    
  }
  
  
  init(){}
  
}


extension LinkedList: CustomStringConvertible{
  var description: String {
    guard let head = head else {
      return "Empty List"
    }
    
    return "\(head) -> nil"

  }
  
  
  
  
}




class Node<Value>{
  
  var value: Value
  var next: Node?
  
  
  init(value: Value, next: Node? = nil) {
    self.value = value
    self.next = next
  }
  
}


extension Node: CustomStringConvertible{
  public var description: String {
    guard let next = next else{
      return "\(value)"
    }
    return "\(value)! -> " + String(describing: next) + " "
    
    
  }
  
}


var list = LinkedList<Int>()

list.push(1)
list.push(2)
list.push(3)
list.push(4)
//list.append(1)
//list.append(2)
//list.append(3)
//list.append(4)
//print(list)
//
//
//let midlleNode = list.findNodeAtIndex(at: 1)!
//print(midlleNode)
//list.insertAtIndex(5, after: midlleNode)
//

//list.pop()
//list.removeLast()

let index = 2
let node = list.findNodeAtIndex(at: index)
list.removeAfter(after: node!)
print(list)

//print(list.findNodeAtIndex(at: 1))



//let node1 = Node(value: 1)
//let node2 = Node(value: 2)
//let node3 = Node(value: 3)
//
//
//node1.next = node2
//node2.next = node3
//
//print(node1)















