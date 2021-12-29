import UIKit

func imageOfSize(_ size: CGSize, _ whatToDraw: () -> ()) ->UIImage {
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    whatToDraw()
    let result = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return result
}



var now: String {
    get {
        return Date().description
    }
    
    set {
        print("You can not set now to \(newValue)")
    }
}

now = "now"
print("Now is \(now)")

var nowB: String {
    get {
        Date().description
    }
}

var nowC: String {
    Date().description
}
