import UIKit

let names = ["Chris", "Jane", "Ewa", "Alex", "Dean"]

func backward(_ one: String, _ anohter: String) -> Bool {
    one > anohter
}

let reversedNames = names.sorted(by:backward(_:_:))
