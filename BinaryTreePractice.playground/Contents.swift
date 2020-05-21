class BinaryNode<T>{
  
  var value: T
  var leftChild: BinaryNode?
  var rightChild: BinaryNode?
  
  init(_ value: T){
    self.value = value
  }
}

/*
    10
   /  \
  9    2
/  \  /  \
1  3  4   6
 */

// STACK: 10->9-1
// Print: 1
extension BinaryNode{
  
  func traversePreOrder(visit:(T)->Void){
    
    visit(value)
    leftChild?.traversePreOrder(visit: visit)
    rightChild?.traversePreOrder(visit: visit)

    
  }
  
  
  
  
  
  func traversPostOrder(visit:(T)->Void){
    
    leftChild?.traversPostOrder(visit: visit)
    rightChild?.traversPostOrder(visit: visit)
    visit(value) //printing
    
    
  }
  
  
  
  
  // for printout
  func traversInOrder(visit:(T)->Void){
    
    leftChild?.traversInOrder(visit: visit)
    // no more leftChind - move on to print a value
    visit(value)
    rightChild?.traversInOrder(visit: visit)
  }
}

let ten = BinaryNode(10)
let nine = BinaryNode(9)
let two = BinaryNode(2)
let one = BinaryNode(1)
let three = BinaryNode(3)
let four = BinaryNode(4)
let six = BinaryNode(6)

ten.leftChild = nine
ten.rightChild = two
nine.leftChild = one
nine.rightChild = three
two.leftChild = four
two.rightChild = six


//ten.traversInOrder {
//  print($0)
//}

//ten.traversPostOrder {
//  print($0)
//}

ten.traversePreOrder {
  print($0)
}
