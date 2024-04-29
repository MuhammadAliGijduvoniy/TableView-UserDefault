//
//  Array+Extensions.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import Foundation


extension Array where Element == MContact {
    
    func dictionaryArray() -> [[String: String]] {
        var result = [[String : String]]()
        for item in self {
            result.append(item.dictionaryy)
        }
        return result
    }
}

extension Array where Element == [String : String] {
    
    func contacts() -> [MContact] {
        var result = [MContact]()
        for item in self {
            result.append(MContact(item))
        }
        return result
    }
    
}
