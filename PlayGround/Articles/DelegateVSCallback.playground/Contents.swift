import UIKit

class MatheMaticViewController :ShowResultDelegate  {
    func show(result: Int) {
        display(result:result)
    }
    
    private func display(result:Int) {
        print(result)
    }
    
    
    private func tryToShowResultFirst(first: Int, second: Int) {
        let numberOperation = NumberOperation()
        numberOperation.showResultDelegate = self
        numberOperation.sum(one: first, another: second)
        
    }
    
    private func tryToShowResultSecond(first: Int, second: Int) {
        let numberOperationWithClosure = NumberOperationWithClosure()
        
        numberOperationWithClosure.sum(one: first, another: second, action: { [weak self](result: Int) -> Void in
            self?.display(result: result)}
        )
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
    
    
    func sum(one: Int, another: Int, action: (Int) -> Void) {
        let result = one + another
        action(result)
    }
}
