/*
 
 Write a program to find the node at which the intersection of two singly linked lists begins.

 For example, the following two linked lists:


 begin to intersect at node c1.

  

 Example 1:


 Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,6,1,8,4,5], skipA = 2, skipB = 3
 Output: Reference of the node with value = 8
 Input Explanation: The intersected node's value is 8 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [4,1,8,4,5]. From the head of B, it reads as [5,6,1,8,4,5]. There are 2 nodes before the intersected node in A; There are 3 nodes before the intersected node in B.
  

 Example 2:


 Input: intersectVal = 2, listA = [1,9,1,2,4], listB = [3,2,4], skipA = 3, skipB = 1
 Output: Reference of the node with value = 2
 Input Explanation: The intersected node's value is 2 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [1,9,1,2,4]. From the head of B, it reads as [3,2,4]. There are 3 nodes before the intersected node in A; There are 1 node before the intersected node in B.
  

 Example 3:


 Input: intersectVal = 0, listA = [2,6,4], listB = [1,5], skipA = 3, skipB = 2
 Output: null
 Input Explanation: From the head of A, it reads as [2,6,4]. From the head of B, it reads as [1,5]. Since the two lists do not intersect, intersectVal must be 0, while skipA and skipB can be arbitrary values.
 Explanation: The two lists do not intersect, so return null.
 */


 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil{
            return nil
        }
        var currentA = headA
        var currentB = headB
        while currentA !== currentB {
            currentA = currentA == nil ? headB : currentA?.next
            currentB = currentB == nil ? headA : currentB?.next
        }
        
        
        return currentA
    }
}




let solution = Solution()


//Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,6,1,8,4,5], skipA = 2, skipB = 3

let four1 = ListNode(4)
let one1 = ListNode(1)
let eight1 = ListNode(8)
let four1a = ListNode(4)
let five = ListNode(5)

four1.next = one1
one1.next = eight1
eight1.next = four1a
four1a.next = five


let five2 = ListNode(5)
let six2 = ListNode(6)
let one2 = ListNode(1)
let eight2 = ListNode(8)
let four2 = ListNode(4)
let eight2a = ListNode(8)

five2.next = six2
six2.next = one2
one2.next = eight2
eight2.next = four2
four2.next = eight2a

solution.getIntersectionNode(four1, five2)
