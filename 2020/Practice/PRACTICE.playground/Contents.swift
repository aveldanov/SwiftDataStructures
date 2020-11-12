class Stack<T>{
    
    var array: [T] = []
    
    
    func displayStack(){
        
        print(array.map{
            "\($0)"
        }.reversed().joined(separator: ","))
    }
    
    func push(_ value:T){
        array.append(value)
    }
    func pop()->T?{
        return array.popLast()
    }
}


let stack = Stack<Int>()


stack.push(4)
stack.push(5)
stack.push(6)

stack.displayStack()
stack.pop()
stack.displayStack()
