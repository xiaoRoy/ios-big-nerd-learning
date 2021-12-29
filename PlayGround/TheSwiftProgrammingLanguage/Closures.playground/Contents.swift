import UIKit
import Foundation

let names = ["Chris", "Jane", "Ewa", "Alex", "Dean"]

func backward(_ one: String, _ anohter: String) -> Bool {
    one > anohter
}

let reversedNames = names.sorted(by:backward(_:_:))

//Closure Expression Syntax
let reversedNamesA = names.sorted(by: {(one: String, another: String) -> Bool in
    return one > another
})

//Inferring Type From Context
let reversedNamesB = names.sorted(by: {(one, another) in return one > another})

//Implict Returns from Single-Expression Closure
let reversedNamesC = names.sorted(by: {(one, another ) in one > another})

//Shorthand Argument Names
let reversedNamesD = names.sorted(by: { $0 > $1 })

//Operator Methods
let reversedNamesE = names.sorted(by: >)

//Trailing Closures
let reversedNamesF = names.sorted() { $0 > $1 }

//Trailing Closures as only one argument
let reversedNamesG = names.sorted { $0 > $1 }

func transferDigitToName() -> [String]{
    let digitNames = [
        0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
    ]

    let numbers = [1, 12, 29, 1201]

    let numbersInNames: [String] = numbers.map {
        var tempNumber = $0
        var result = ""
        repeat {
            if let digitName = digitNames[tempNumber % 10] {
                result = digitName + result
                tempNumber /= 10
            } else {
                tempNumber = -1
            }
        }while tempNumber > 0
        return result
    }
    return numbersInNames
}

transferDigitToName()

//Trailing Closures
class Server {}

class Picture {
}

func loadPicture(from server: Server,
                 completion: (Picture) -> Void,
                 failure: () -> Void) {
    func doLoad(picture: String, from: Server) -> Picture? {
        return Picture()
    }
    
    if let picture = doLoad(picture: "football.jpg", from: server) {
        completion(picture)
    } else {
        failure()
    }
}

loadPicture(from: Server()) {
    picture in
    print("Loaded picture:\(picture)")
} failure: {
    print("Fail to load a picture.")
}

//Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
