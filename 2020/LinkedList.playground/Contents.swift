class Node<T>{
    var next: Node<T>?
    var value: T
    
    init(_ value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}



extension Node: CustomStringConvertible{
    var description: String {
        // if there are no next node
        guard let next = next else {
            return "\(value) -> nil"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}



let one = Node(1)
let two = Node(2)
let three = Node(3)


one.next = two
two.next = three
three.next = nil

print(one)
