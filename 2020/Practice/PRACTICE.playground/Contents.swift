

class Person {
    var name : String
    var laptop: Laptop?
    
    init(name: String, laptop: Laptop?) {
        self.name = name
        self.laptop = laptop
    }
    
    deinit {
        print("Deinit \(name)")
    }
 
}

class Laptop{
    var owner: Person?
    var laptopName: String
    
    init(laptopName: String, owner: Person? ) {
        self.owner = owner
        self.laptopName = laptopName
    }
    
    deinit {
        print("Deinit \(laptopName)")
    }
    
}

var anton : Person?
var mac1 : Laptop?

func createObjects(){
    anton = Person(name: "anton", laptop: nil)
    mac1 = Laptop(laptopName: "macac1", owner: nil)

//    anton = nil
//    mac1 = nil
}

func assignProp(){
    
    anton?.laptop = mac1
    mac1?.owner = anton
    
    anton = nil
}



createObjects()

assignProp()
