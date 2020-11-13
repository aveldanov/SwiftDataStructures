class Queue<T>{
    
    var queueStore = [T]()
    
    
    func enqueue(_ value:T)->Bool{
        
        queueStore.append(value)
        return true
    }
    
    func dequeue()->T?{
        
        return queueStore.isEmpty ? nil : queueStore.removeLast()
    }

    
}

let queue = Queue<Int>()

queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)


print(queue)

