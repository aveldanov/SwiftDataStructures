


class BinaryNode<T>{
    var value: T
    var left: BinaryNode?
    var right: BinaryNode?
    
    init(_ value: T) {
        self.value = value
    }
    
}


/*
    10
    /\
   9   2
   /\  /\
  1  3 4 6

*/


extension BinaryNode{
    func traverePostOrder(visit:(T)->(Void)){
        left?.travereInOrder(visit: visit)
        right?.travereInOrder(visit: visit)
        visit(value)
    }
    
    func travereInOrder(visit:(T)->(Void)){
        left?.travereInOrder(visit: visit)
        visit(value)
        right?.travereInOrder(visit: visit)
    }
    
    
}


let ten = BinaryNode(10)
let nine = BinaryNode(9)
let two = BinaryNode(2)
let one = BinaryNode(1)
let three = BinaryNode(3)
let four = BinaryNode(4)
let six = BinaryNode(6)


ten.left = nine
ten.right = two
nine.left = one
nine.right = three
two.left = four
two.right = six



ten.travereInOrder {
    print($0)
}

