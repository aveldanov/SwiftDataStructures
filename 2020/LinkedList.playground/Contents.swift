class Node<T>{
    var next: Node<T>?
    var value: T
    
    init(_ value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}

struct LinkedList<T> where T: Equatable{
    var head: Node<T>?

    mutating func push(_ value: T){
        if head == nil{
            head  = Node(value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
            current?.next = Node(value, next: nil)

    }
    
    mutating func delete(_ value: T){
        if head?.value == value{
            head = head?.next
            return
        }
        
        var current = head
        var prev : Node<T>?
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        
        prev?.next = current?.next
        
    }
    
    mutating func insertAt(after value: T, insertValue: T){
        if head == nil{
            head = Node(value, next: nil)
        }
            
        var current = head
        var prev : Node<T>?
        while current?.value != value && current != nil {
            prev = current
            current = current?.next
            
        }
        var nextNode = current?.next
        current?.next = Node(insertValue, next: nextNode)
        
        
    }
    
    
    
    func displayList(){
        var current = head
        while current != nil{
            print(current?.value ?? "nil")
            current = current?.next
        }
        
    }
    
    
}


var list = LinkedList<Int>()




//// print out linked list
//extension Node: CustomStringConvertible{
//    var description: String {
//        // if there are no next node
//        guard let next = next else {
//            return "\(value) -> nil"
//        }
//        return "\(value) -> " + String(describing: next) + " "
//    }
//}
//
//extension LinkedList: CustomStringConvertible{
//    var description: String {
//        // if there are no next node
//        guard let head = head else {
//            return "Empty list"
//        }
//        return String(describing: head)
//    }
//}




let one = Node(1)
let two = Node(2)
let three = Node(3)
//let ten = Node(10)

one.next = two
two.next = three
three.next = nil

list.push(1)
list.push(2)
list.push(3)

//list.delete(2)

list.insertAt(after: 122, insertValue: 10)

list.displayList()
