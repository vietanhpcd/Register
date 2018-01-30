//
//  File.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import Foundation

class City {
    var name: String
    var cityCode: Int
    
    init(name: String, cityCode: Int) {
        self.name = name
        self.cityCode = cityCode
    }
    
    convenience init?(dictionary: JSON) {
        guard let name = dictionary["Name"] as? String,
        let cityCode = dictionary["CityCode"] as? Int
            else {return nil}
        self.init(name: name, cityCode: cityCode)
    }
}
