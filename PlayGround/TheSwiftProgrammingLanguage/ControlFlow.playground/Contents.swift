import UIKit


//early exit
func greet(personInfo: [String: String]) {
    guard let name = personInfo["name"] else {
        print("fall into the first guard else")
        return
    }
    print("Hello \(name)")
    
    guard let location = personInfo["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location)")
}

greet(personInfo: [:])

greet(personInfo: ["name": "Jane"])

greet(personInfo: ["name": "Smith", "location":"Beijing"])
