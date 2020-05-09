


class Node{
  let value: Int
  var next: Node?
  
  init(value: Int, next: Node?) {
    self.value = value
    self.next = next
  }
  
}

//extension Node: CustomStringConvertible{
//  public var description: String {
//    guard let next = next else{
//      return "\(value)"
//    }
//    return "\(value) -> " + String(describing: next) + " "
//
//
//  }
//
//}



class LinkedList{
  var head: Node?
  var tail: Node?
  
// Display
  func displayListItems(){
    print("Your List: ")
    var currentNode = head
    
    while currentNode != nil {
      print(currentNode?.value ?? "nil")
      currentNode = currentNode?.next
    }
    print("nil")
    
  }
  
  //sample
  func setupDummyNodes(){
    let threeNode = Node(value: 3, next: nil)
    let twoNode = Node(value: 2, next: threeNode)
    head = Node(value: 1, next: twoNode)
  }
  
  // insert
  
  func insert(value: Int){
    
    if head == nil{
      head = Node(value: value, next: nil)

      return
    }else{
     var currentNode = head // 1->nil | 1->2->nil
      while currentNode?.next != nil{
        currentNode = currentNode?.next // 1->2->nil |
      }
      currentNode?.next = Node(value: value, next: nil) // 1->2->nil | 1->2->3->nil
    }
  }
  
  // delete
  
  func delete(value:Int){
    if head?.value == value{
      head = head?.next
    }
    
    var prevNode: Node?
    var currentNode = head
    
    while currentNode != nil && currentNode?.value != value{
      prevNode = currentNode
      currentNode = currentNode?.next
    }
    
    prevNode?.next = currentNode?.next
    
  }
  
  // Special insert 3
  // 1->2->4->5->nil
  func insertInOrder(value: Int){
    if head == nil || head?.value ?? Int.min >= value{
      let newNode = Node(value: 3, next: head)
      head = newNode
      return
    }
    var currentNode:Node? = head
    while currentNode?.next != nil && currentNode?.next?.value ?? Int.min<value{
      
      currentNode = currentNode?.next
      
    }
    
    currentNode?.next = Node(value: value, next: currentNode?.next)
    
    
  }
  
  
  
}



//extension LinkedList: CustomStringConvertible{
//  var description: String {
//        guard let head = head else {
//      return "Empty List"
//    }
//
//    return "\(head) -> nil"
//
//  }
//
//
//
//}



let sampleList = LinkedList()

// 1 -> 2 -> 3 -> nil
//sampleList.setupDummyNodes()
sampleList.insert(value: 1)
sampleList.insert(value: 2)
sampleList.insert(value: 4)
sampleList.insert(value: 5)

//sampleList.delete(value: 2)
// 1->3->nil


sampleList.insertInOrder(value: 3)
sampleList.displayListItems()
