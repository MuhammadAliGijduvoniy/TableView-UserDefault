//
//  Model.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import Foundation


struct MContact {
    
    var phone: String
    var name: String
    
    init(phone: String, name: String) {
        self.phone = phone
        self.name = name
    }
    
    init(_ dict: [String: String]) {
        self.name = dict["name"] ?? ""
        self.phone = dict["phone"] ?? ""
    }
    
    var dictionaryy: [String : String] {
        return ["name" : self.name, "phone" : self.phone]
    }
    
    
}
