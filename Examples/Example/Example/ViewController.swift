//
//  ViewController.swift
//  Example
//
//  Created by Becky on 3/17/22.
//

import UIKit
import EVKit

class ViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.nameLabel.text = "Hellow Yellow"
        let tp = EVKit()
        tp.printHello()
        
    }


}

