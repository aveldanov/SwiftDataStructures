

class BinaryNode<T>{
  
  var value: T
  var leftChild: BinaryNode?
  var rightChild: BinaryNode?
  
  init(value:T){
    self.value = value
  }
  
}




struct BinarySearchTree<T: Comparable>{
  
  private var root : BinaryNode<T>?
  
  init(){}
  
}

extension BinarySearchTree: CustomStringConvertible{
  var description: String {
    guard let root = root else{return "Empty Tree"}
    return String(describing: root)

    
  }
  
  
  
  
  
}
