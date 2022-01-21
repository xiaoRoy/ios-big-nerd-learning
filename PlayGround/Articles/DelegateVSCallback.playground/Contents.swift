import UIKit

class MatheMaticViewController :ShowResultDelegate  {
    func show(result: Int) {
        <#code#>
    }
    
    
}

public protocol ShowResultDelegate: AnyObject {
    func show(result: Int)
}

class NumberOperation {
    weak var showResultDelegate: ShowResultDelegate?
    
    func sum(one: Int, another: Int) {
        let result = one + another
        showResultDelegate?.show(result: result)
    }
    
}


class NumberOperationWithClosure {
    
}
