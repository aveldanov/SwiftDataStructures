

struct LinkedList<T>{
  var head: Node<T>?
  var tail: Node<T>?
  var isEmpty:Bool{
    return head == nil
  }
  
  
//  func displayResult(){
//    print("your list: ")
//    var currentNode = head
//    while currentNode != nil {
//      print(currentNode?.value  ?? "nil")
//      currentNode = currentNode?.next
//    }
//    print("niil")
//
//  }
  
  
  //MARK: - PUSH
  //  1->nil | 2->1->nil
  mutating func push(_ value: T){

    if head == nil{
      head = Node(value: value, next: head) //1->nil
      return
    }else{
      tail = head // 1->nil
      head = Node(value: value,next: tail)
      return
    }
    
    
      
  }
  
  
  //MARK: - APPEND
  mutating func append(_ value: T){
    // ->nil | 1->nil | 1->2->nil | 1->2->3->nil
    
    if head == nil{
      push(value)
      tail = head
    }else{
      let currentNode = tail //1->| 2->
      currentNode?.next = Node(value: value,next: nil) //1->2->nil| 1->2->3->nil
      tail = currentNode?.next // 2->le
      
 
      
    }
    
    
    
  }
  
  //MARK: - Find Node At Index
  
  func findNodeAtIndex(at index:Int)-> Node<T>{
    // 3->2->1->nil
    // index 2
    var currentIndex = 0
    var currentNode = head
    
    while (currentNode != nil) && (currentIndex < index){
      
      currentNode = currentNode?.next
      currentIndex += 1
      
      
    }
    
    
    return currentNode!
  }
  
  
  
  
  
}


class Node<T>{
  
  var value: T
  var next: Node?
  
  init(value: T, next: Node? = nil) {
    self.value = value
    self.next = next
  }
  
}




var list = LinkedList<Int>()
list.push(1)
list.push(2)
list.push(3)

//list.append(1)
//list.append(2)
//list.append(3)

print(list)
//list.displayResult()
print(list.findNodeAtIndex(at: 1))


extension LinkedList : CustomStringConvertible{
  var description: String {
    guard let head = head else {
      return "Empty List"
    }
//    print("HEAD:", head)
    return "\(head) -> nil"
  }


}


extension Node : CustomStringConvertible{
  var description: String {
    guard let next = next else {
//      print("VALUE->n: ", value)
      return "\(value) n" // nil
    }
//    print("VALUE: ", value)

    return "\(value)! -> " + String(describing: next) + " "
  }




}

