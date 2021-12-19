import UIKit

//Defining and Calling Functions


func greet(person: String) -> String {
    return "Hello, \(person)"
}

greet(person: "Jane")

func greet(person: String, alreadyGreeted: Bool) -> String {
    let greeting: String
    if alreadyGreeted {
        greeting = "Hello again, \(person)"
    } else {
        greeting = "Hello, \(person)"
    }
    return greeting
}

//Ambiguous use of 'greet(person:)'
//func greet(person: String) {
//
//}


func findMinAndMax(numbers: [Int]) -> (min: Int, max: Int) {
    let first = numbers.first ?? -1
    var min = first
    var max = first
    for value in numbers[1..<numbers.count] {
        if value < min {
            min = value
        } else if value > max {
            max = value
        }
    }
    return (min, max)
}


func greeting(for person: String) -> String{
    "Hello, \(person)!"
}
