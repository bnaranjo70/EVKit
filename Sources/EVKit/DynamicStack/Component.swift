//
//  Component.swift
//  
//
//  Created by Becky on 3/17/22.
//


#if canImport(UIkit)
import UIKit

class Component: UIView {
    public var name: String?
    
    public func apply() {
        let newLabel = buildLabel(value: "TEST LABEL")
        self.addSubview(newLabel)
    }
    
    func buildLabel(value: String) -> UILabel {
        let label = UILabel()
        label.text = value
        label.textColor = .blue
        return label
    }
}
#endif
