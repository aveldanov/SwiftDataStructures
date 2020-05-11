



struct Queue<T>{
  
  var array:[T] = []
  init(){}
  var isEmpty:Bool{
    return array.isEmpty
  }
  
  
  var peek: T?{
    return array.first
  }
  
  
  mutating func createQueue(_ element:T) -> Bool{
    array.append(element)
    // being added
    return true
  }
  
  mutating func deQueue()-> T?{
    
    return isEmpty ? nil : array.removeFirst()
 
  }

}


extension Queue: CustomStringConvertible{
  var description: String {
    return String(describing: array)
  }
  
}


var queue = Queue<Int>()
queue.createQueue(1)
queue.createQueue(2)
queue.createQueue(3)
print(queue.peek)
print(queue.deQueue())
print(queue)
