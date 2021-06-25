import UIKit

var message = "Hello, playground"
message = "Hello, world"

let anotherMessage = "Hello, angel!"

let numbers: Array<Int> = [1, 2, 3, 4]
let messages = ["Hi", "Where are you from?"]

let secondNumbner = numbers[1]

let captitalByCountry:Dictionary<String, String> = ["Beijing":"China", "London":"UK", "New York" : "USA"]
let secondCapitalByCountry:[String: String] = ["Beijing":"China", "London":"UK", "New York" : "USA"]

let emptyNumberArray = [Int]()

let defaultInt = Int() // 0
let defaultBoolean = Bool() //false

let numberInString = String(44) // "44"

let pi = 3.14 // Double
let floatPi = Float(pi)

let emptyString = ""

var fruits = ["apple", "orange"]
fruits.append("orange")

//MARK:- Optional

var reading1: Float? = 9.8
var reading2: Float? = 9.2
var reading3: Float? = 9.3

let averageReadingNotSafe = (reading1! + reading2! + reading3!) / 3

if let r1 = reading1,
   let r2 = reading2,
   let r3 = reading3 {
    let averageReading = (r1 + r2 + r3) / 3
    print(averageReading)
} else {
    print("Instrument reported a reading that was nil")
}

//MARK:- Subscripting dictionary
let namesById:[Int:String] = [1 : "Jane", 2 : "Mary", 3: "Lucy"]

if let one = namesById[1] {
    print(one)
}

//MARK:- Loops and String Interpolation

let readings: Array<Float> = [1.2, 32.1, 123.2, 42.1]
for reading in readings {
    print(reading)
}

let nameByParkingSpace = [13: "Alice", 27 : "Bob"]

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space):\(name)"
    print(permit)
}

//MARK:- Enumeration and the Swtich statement
enum PieType {
    case apple
    case cherry
    case pecan
}

//MARK:- Enumeration and raw values
enum Fruit: String {    
    case apple
    case orange
    case peach = "PEACH"
    case pear
}

if let apple = Fruit(rawValue: "apple") {
    print(apple)
}

if let peach = Fruit(rawValue: "peach") {
    print(peach)
} else {
    print("It's not peach!")
}
