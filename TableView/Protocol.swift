//
//  Protocol.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import Foundation


protocol TableVcDelegate {
    
    func reloadAllData()
    
    func reloadData(_ section: Int)
    
}
