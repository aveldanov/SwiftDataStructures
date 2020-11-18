
class Person{
    var name: String
    var laptop: Computer?
    init(name:String, laptop: Computer?) {
        self.name = name
        self.laptop = laptop
    }
    
    deinit {
        print("\(name) has been deinit")
    }
}

class Computer{
    var laptopName: String
    var owner: Person?
    init(laptopName:String, owner: Person?) {
        self.laptopName = laptopName
        self.owner = owner
    }
    
    deinit {
        print("\(laptopName) has been deinit")

    }
}

var anton: Person?
var mac1: Computer?

anton = Person(name: "anton", laptop: nil)
mac1 = Computer(laptopName: "mac1L", owner: nil)


func initComp(){
    
    anton?.laptop = mac1
    mac1?.owner = anton
    
    anton = nil
}


initComp()
