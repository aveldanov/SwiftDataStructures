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
    while current != nil {
        print(current?.value ?? "")
        current = current?.next
    }
}

// nil<-1->2->3->nil
//       prev curr next
// nil->3->2->1->nil

func reverseList(head: ListNode<Int>?)->ListNode<Int>?{
    var prev: ListNode<Int>?
    var next: ListNode<Int>?
    var current = head
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
        
    }
    return prev
}

reverseList(head: one)


