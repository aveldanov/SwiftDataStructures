
struct LinkedList<Value>{
  
  
  var head: Node<Value>?
  var tail: Node<Value>?
  var isEmpty:Bool{
    return head == nil
  }
  
  
  // PUSH
  mutating func push(_ value: Value)  {
    head = Node(value: value, next: head)
    
    // check if empty
    if tail == nil{
//      print("tail:", tail)
      tail = head
//    print("tail:", tail)

    }
    
  }
  
  // APPEND
  mutating func append(_ value: Value){
    
    guard !isEmpty else {
      print("EMPTY->  pushing: ", value)
      push(value)
      return
    }
    
    let node = Node(value: value)
    print("value", value) // 3
    print("tail.next",tail?.next) // nil
    print("tail",tail) // 2
    print("")
    tail?.next = node //  nil-> 3
    print("tail.next",tail?.next) // 3
    tail = node // 3
    
    print("tail",tail) // 3
    print("tail.next",tail?.next)
    print("head", head)
    print("")

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

//list.push(2)
//list.push(3)
//list.push(22)
list.append(2)
list.append(3)
//list.append(22)


print(list)




//let node1 = Node(value: 1)
//let node2 = Node(value: 2)
//let node3 = Node(value: 3)
//
//
//node1.next = node2
//node2.next = node3
//
//print(node1)















