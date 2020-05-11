



//struct Queue<T>{
//
//  var array:[T] = []
//  init(){}
//  var isEmpty:Bool{
//    return array.isEmpty
//  }
//
//
//  var peek: T?{
//    return array.first
//  }
//
//
//  mutating func createQueue(_ element:T) -> Bool{
//    array.append(element)
//    // being added
//    return true
//  }
//
//  mutating func deQueue()-> T?{
//
//    return isEmpty ? nil : array.removeFirst()
//
//  }
//
//}




struct Queue<T>{
  var elements:[T] = []
  
  var isEmpty:Bool{
    return elements.isEmpty
  }
  
  var peek:T?{
    
  return  elements.first
  }
  
  
  mutating func queue(_ value:T)->Bool{
    
    elements.append(value)
    return true
  }
  
  mutating func dequeue()->T?{
    
    
    return isEmpty ? nil : elements.removeFirst()
    
    
  }
  
  
}






extension Queue: CustomStringConvertible{
  var description: String {
    return String(describing: elements)
  }
  
}


var queue = Queue<Int>()
queue.queue(1)
queue.queue(2)
queue.queue(3)
print(queue.peek)
print(queue.dequeue())
print(queue)
