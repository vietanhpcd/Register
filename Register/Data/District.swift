//
//  District.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import Foundation

class District {
    var name: String
    var cityCode: Int
    var districtCode: Int
    
    init(name: String, cityCode: Int, districtCode: Int) {
        self.name = name
        self.cityCode = cityCode
        self.districtCode = districtCode
    }
    
    convenience init?(dictionary: JSON) {
        guard let name = dictionary["Name"] as? String,
            let cityCode = dictionary["CityCode"] as? Int,
            let districtCode = dictionary["DistrictCode"] as? Int
            else {return nil}
        self.init(name: name, cityCode: cityCode, districtCode: districtCode)
    }
}
