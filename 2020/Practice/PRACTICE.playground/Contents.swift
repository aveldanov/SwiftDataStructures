class ListNode<T>{
    var next: ListNode?
    var value: T
    init(_ value:T, _ next: ListNode?) {
        self.value = value
        self.next = next
    }

}


class LinkedList<T>{
    var head: ListNode<T>?
    
    func displayNodes(){
        var current = head
        
        while current!.next != nil {
            print(current?.value ?? "")
            current = current?.next
        }
        
        
    }
    
    
    func push(value: T){
        if head == nil{
            head = ListNode(value, nil)
        }
        
        var current = head
        while current != nil {
            current = current?.next
        }
        
        head = ListNode(value, head)
        
        
    }
    
    
}


let linkedList = LinkedList<Int>()

linkedList.push(value: 3)


