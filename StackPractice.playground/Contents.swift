



struct Stack<Element>{
  
  
  private var storage : [Element] = []
  
  
  
  mutating func push(_ element: Element){
    
    storage.append(element)
    
    
  }
  
  mutating func pop()->Element?{
    storage.popLast()
  }
  
  
  init() {}
}



extension Stack: CustomStringConvertible{
  var description: String {
    
    let topDivider = "======top======\n"
    let bottomDividor = "\n===bottom==="
    
    let stackElements = storage.map{"\($0)"}.reversed().joined(separator: "\n")
    return topDivider + stackElements + bottomDividor
  }

}




var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

print(stack)
stack.pop()
print(stack)


