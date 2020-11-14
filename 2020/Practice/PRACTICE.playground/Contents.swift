class Queue<T>{
    
    var array = [T]()
   
    func enqueue(_ value:T)->Bool{
        array.append(value)
        return true
    }
    
    func dequeue()->T?{
        return array.isEmpty ? nil : array.removeFirst()
    }
}


let queue = Queue<Int>()

queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.dequeue()

print(queue.array)
