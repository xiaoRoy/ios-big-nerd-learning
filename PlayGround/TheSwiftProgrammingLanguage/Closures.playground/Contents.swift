import UIKit

let names = ["Chris", "Jane", "Ewa", "Alex", "Dean"]

func backward(_ one: String, _ anohter: String) -> Bool {
    one > anohter
}

let reversedNames = names.sorted(by:backward(_:_:))


let reversedNamesA = names.sorted(by: {(one: String, another: String) -> Bool in
    one > another
})
