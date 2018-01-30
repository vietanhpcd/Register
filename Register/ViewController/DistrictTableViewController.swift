//
//  DistrictTableViewController.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import UIKit

class DistrictTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.shared.displayDistrict.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = DataServices.shared.displayDistrict[indexPath.row].name
        cell.detailTextLabel?.text = String(DataServices.shared.displayDistrict[indexPath.row].districtCode)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataServices.shared.selectDistric = DataServices.shared.displayDistrict[indexPath.row].name
    }
}
