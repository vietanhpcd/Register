//
//  AgeViewController.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController {


    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.selectRow(17, inComponent: 0, animated: true)
    }
}

extension AgeViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DataServices.shared.arrayAge.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(DataServices.shared.arrayAge[row])
    }
    
    // Đã trọn dòng dữ liệu sẽ được truyền về selectPickerView
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DataServices.shared.selectPickerView = DataServices.shared.arrayAge[row]
    }
}
