//
//  File.swift
//  
//
//  Created by Becky on 3/17/22.
//


#if canImport(UIkit)
import UIKit

class DynamicStack: UIView {
 
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
 
    func apply(components: [Component]) {
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        components.forEach { componennt in
            do {
                var componentView = component.apply(self)
                self.outerStackView.addArrangedSubview(componentView)
            }
        }
    }
}

#endif
