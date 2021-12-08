import UIKit
import Combine

var message: String? = "hello"

print(message!)

//optional binding
let possibleNumber = "123a"

if let number = Int(possibleNumber) {
    print("The number is \(number).")
} else {
    print("The string \"\(possibleNumber)\" is not a number")
}

func showMatchedNumber(number: String) {
    if let actualNumber = Int(number), actualNumber > 60 {
        print("The matched number is \(actualNumber).")
    } else {
        print("The stirng \"\(number)\" is not matched.")
    }
}

showMatchedNumber(number: "12")
showMatchedNumber(number: "92")

//Implicitly Unwrapped Optionals

let possibleString: String? = nil
print("The count of the \"possibleString\" is \(possibleString?.count).")

let assumedString: String! = "An implicitly unwrapped optioanl string"
print("The count of \"assumedString\" is \(assumedString.count).")

let number = 1
number.description

let optionalString = assumedString

private let confirmNewPasswordDidChange = PassthroughSubject<String, Never>()
                                            .debounce(for: .seconds(0.4), scheduler: RunLoop.main)
