//
//  File.swift
//  Register
//
//  Created by vietanh on 1/23/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import Foundation

typealias JSON = Dictionary<AnyHashable, Any>

class PlistService {
    func readService(plist: String) -> JSON? {
        let nameFile = plist.components(separatedBy: ".")
        
        // Cách 1: Ngắn gọn
        guard let filePath = Bundle.main.path(forResource: nameFile.first ?? "", ofType: nameFile.last ?? ""),
            let result = NSDictionary(contentsOfFile: filePath) as? JSON
            else { return nil }
        return result
        
//        // Cách 2: An toàn hơn
//        var result: JSON?
//        guard let filePath = Bundle.main.path(forResource: nameFile.first ?? "", ofType: nameFile.last ?? "") else {return nil}
//        guard FileManager.default.fileExists(atPath: filePath) == true else {return nil}
//        guard let data = FileManager.default.contents(atPath: filePath) else {return nil}
//        do {
//            guard let root = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? JSON else {return nil}
//            result = root
//        } catch { print("Error: PropertyListSerialization error") }
//        print("get \(plist): \n \(result)")
//        return result
    }
}
