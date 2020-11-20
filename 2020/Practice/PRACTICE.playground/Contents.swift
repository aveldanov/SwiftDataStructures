class ListNode<T>{
    var next: ListNode?
    var value: T
    init(_ value: T, _ next: ListNode?) {
        self.value = value
        self.next = next
    }
}

let three = ListNode(3, nil)
let two = ListNode(2, three)
let one = ListNode(1, two)

func displayNode(head:ListNode<Int>?){
    var current = head
    while current!.next != nil {
        print(current?.value ?? "")
        current = current?.next
    }
}

func reverseList(head: ListNode<Int>?)->ListNode<Int>?{
    
    
    return head
}


displayNode(head: one)

