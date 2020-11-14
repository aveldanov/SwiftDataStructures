class ListNode<T>{
    var next: ListNode?
    var  value: T
    init(_ value: T, _ next: ListNode?) {
        self.value = value
        self.next = next
    }
    
}


class LinkedList<T>{
    var head: ListNode<T>?
    
    func displayList(){
        var current = head
        
        while current?.next != nil {
            print(current?.value ?? "")
            current = current?.next
            
        }
    }
    
    
    func push(_ value: T){
        if head == nil{
            head = ListNode(value, nil)
        }
        
        var current = head
        while current != nil {
            current = current?.next
        }
        
        head = ListNode(value, head)
        
        
    }
    
    func insertAtIndex(_ value: T, _ index: Int){
        if head == nil{
            head = ListNode(value, nil)
        }
         var current = head
        
        
    }
    
     
}

let linkedList = LinkedList<Int>()

linkedList.push(3)
linkedList.push(2)
linkedList.push(1)

linkedList.displayList()
