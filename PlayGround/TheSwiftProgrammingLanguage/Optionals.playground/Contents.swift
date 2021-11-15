import UIKit

var message: String? = "hello"

print(message)

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

