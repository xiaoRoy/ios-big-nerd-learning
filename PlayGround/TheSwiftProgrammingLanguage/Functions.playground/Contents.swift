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

//Function Argument Labels and Parameter Names

func greeting(for person: String) -> String{
    "Hello, \(person)!"
}

func greeting(person: String, from hometown: String) -> String {
    "Hello, \(person)! Glad you could visit from \(hometown)."
}


func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}


func swap(_ first: inout Int, _ second: inout Int) {
    let temp = first
    first = second
    second = temp
}

func doSwap() {
    var first = 12
    var second = 34
    
    swap(&first, &second)
    
    print("first is:\(first)")
    print("second is:\(second)")
}
