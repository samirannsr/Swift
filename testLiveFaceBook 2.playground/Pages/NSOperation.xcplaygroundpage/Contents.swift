//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

var str = "Hello, playground"

class BlockO:Operation {
    
}

class AsyncOperation: Operation {
    enum State: String {
      case Ready, Execution, Finished

    fileprivate var  keyPath: String {
        return "is" + rawValue
    }
    }
    
    var state = State.Ready {
        willSet {
            willChangeValue(forKey: newValue.keyPath )
            willChangeValue(forKey: state.keyPath)
        }
        didSet {
            didChangeValue(forKey: oldValue.keyPath)
            didChangeValue(forKey: state.keyPath)
        }
    }
}
extension AsyncOperation {
    override var isReady: Bool {
        return super.isReady && state == .Ready
    }
    
    override var isFinished: Bool {
        return state == .Finished
    }
    override var isExecuting: Bool {
        return state == .Execution
    }
    
    override var isAsynchronous: Bool {
        return true
    }
    
    override func start() {
        if isCancelled {
            state = .Finished
            return
        }
        main()
        state = .Execution
    }
    
    override func cancel() {
        if isFinished {
            state = .Finished
            return
        }
        
    }
}




