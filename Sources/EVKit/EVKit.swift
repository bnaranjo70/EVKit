
#if canImport(UIkit)
import UIKit
import Foundation

open class newClass {
    public var me: String
}

public class EVKit {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func printHello() {
        print(text)
    }
    
    public func getDynamicStack() {
      let nc = newClass()
        nc.me = "hello"
        let ds = getDynamicStack()
        let component = Component()
        compoent.apply()
        ds.apply([component])
    }
}
#endif
