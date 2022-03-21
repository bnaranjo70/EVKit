
#if canImport(UIkit)
import UIKit
import Foundation


public class EVKit {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func printHello() {
        print(text)
    }
    
    public func getDynamicStack() -> UIView {
        let ds = DynamicStack()
        let component = Component()
        compoent.apply()
        ds.apply([component])
        return ds
    }
}
#endif
