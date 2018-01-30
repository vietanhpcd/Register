//
//  GenderViewController.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {

    @IBOutlet var select: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonClick(sender: UIButton) {
        select.forEach{ $0.isSelected = false
        }
        sender.isSelected = true
        sender.setTitleColor(UIColor.black, for: .selected)

        if let nameGender = sender.currentTitle {
            let _gender = nameGender.components(separatedBy: " ")
            DataServices.shared.gender = _gender.last
            performSegue(withIdentifier: "ShowAge", sender: nil)
        }
    }
}
