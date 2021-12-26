import UIKit

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
