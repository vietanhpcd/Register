//
//  ResultViewController.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityLabel.text = DataServices.shared.finish["City"] as? String
        districtLabel.text = DataServices.shared.finish["Distric"] as? String
        genderLabel.text = DataServices.shared.finish["Gender"] as? String
        guard let ageFinish = DataServices.shared.finish["Age"] as? Int else {return}
        ageLabel.text = String(describing: ageFinish)
    }
}
