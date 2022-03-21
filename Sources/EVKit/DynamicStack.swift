//
//  File.swift
//  
//
//  Created by Becky on 3/17/22.
//


#if canImport(UIkit)
import UIKit

open class DynamicStack: UIView {
 
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    public init(frame: CGRect,
                   colors: [UIColor],
                   lineWidth: CGFloat)
       {
           self.colors = colors
           self.lineWidth = lineWidth
           
           super.init(frame: frame)
           
           self.backgroundColor = .clear
       }
       
       public convenience init(colors: [UIColor], lineWidth: CGFloat) {
           self.init(frame: .zero, colors: colors, lineWidth: lineWidth)
       }
       
       public required init?(coder: NSCoder) {
           self.colors = [.black]
           self.lineWidth = 5
           
           super.init(coder: coder)
           
           self.backgroundColor = .clear
       }
    
    func apply(components: [Component]) {
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        components.forEach { component in
            do {
                component.apply()
                self.stackView.addArrangedSubview(component)
            }
        }
    }
}

#endif
