import UIKit

func imageOfSize(_ size: CGSize, _ whatToDraw: () -> ()) ->UIImage {
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    whatToDraw()
    let result = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return result
}



