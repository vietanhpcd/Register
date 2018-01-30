//
//  DataServices.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import Foundation

class DataServices {
    static let shared = DataServices()
    
    //MARK: Finish
    var finish: [String : Any] = ["City": "", "Distric": "", "Gender": "", "Age": 18]
    
    // Khi có giá trị lưu vào finish
    var selectCity: String?{
        didSet{
            if let select = selectCity {
                finish["City"] = select
            }
        }
    }

    var displayDistrict = [District]()
    // Khi biết cityCode (tỉnh) đã trọn chạy vào
    var selectedCityCode: Int? {
        // willSet - được gọi trước khi lưu giá trị
        // didSet - được gọi sau khi lưu giá trị
        didSet {
            if selectedCityCode != nil {
                // Lọc ra mảng có chứa các phần tử có cityCode đã trọn
                displayDistrict = districts.filter({$0.cityCode == selectedCityCode!})
            }
        }
    }
    
    // Cities
    // Chưa có giá trị chạy vào get{} (getting) ; Có giá trị chạy vào set{} (setting)
    private var _cities: [City]?
    var cities: [City] {
        get {
            if _cities == nil {
                loadCityList()
            }
            return _cities ?? []
        }
        set {
            _cities = newValue
        }
    }
    
    // lấy dữ liệu trong plist thêm vào mảng _cities
    func loadCityList() {
        guard let dictionary = PlistService().readService(plist: "Cities.plist") else {return}
        guard let cityDictionaries = dictionary["Cities"] as? [JSON] else {return}
        _cities = []
        for cityDictionary in cityDictionaries {
            if let city = City(dictionary: cityDictionary) {
                print(city)
                _cities?.append(city)
            }
        }
    }

    // Khi có giá trị lưu vào finish
    var selectDistric: String? {
        didSet {
            if let select = selectDistric {
                finish["Distric"] = select
            }
        }
    }
    
    // Districts
    private var _districts: [District]?
    var districts: [District] {
        get {
            if _districts == nil {
                loadDistrictList()
            }
            return _districts ?? []
        }
        set {
            _districts = newValue
        }
    }
    
    // lấy dữ liệu trong plist thêm vào mảng _districts
    func loadDistrictList() {
        guard let dictionary = PlistService().readService(plist: "Districts.plist") else {return}
        guard let districtDictionaries = dictionary["Districts"] as? [JSON] else {return}
        _districts = []
        for districtDictionary in districtDictionaries {
            if let city = District(dictionary: districtDictionary) {
                _districts?.append(city)
            }
        }
    }
    
    // Khi có giá trị lưu vào finish
    var gender: String? {
        didSet{
            if let select = gender {
                finish["Gender"] = select
            }
        }
    }

    // Khi có giá trị lưu vào finish
    var arrayAge = [Int](1...100)
    var selectPickerView: Int? = 18 {
        didSet {
            if let select = selectPickerView {
                finish["Age"] = select
            }
        }
    }
}








