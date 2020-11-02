class Node<T>{
    var next: Node<T>?
    var value: T
    
    init(_ value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}

struct LinkedList<T>{
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool{
        return head == nil
    }
    init() {}
    
    
    mutating func push(_ value: T){
        head = Node(value, next: head)
        if tail == nil{
            tail = head
        }
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

list.push(10)
list.push(11)
list.push(12)

print(list.displayList())
