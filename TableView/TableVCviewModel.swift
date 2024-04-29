//
//  TableVCviewModel.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import UIKit

class TableVCviewModel {
    
    var list: [MContact] = []
    
    var delegate: TableVC!
    
    var numbersOfSections: Int {
        return 1
    }
    
    init(_ delegate: TableVC!) {
        self.delegate = delegate
        initData()
    }
    
    func getUserData() {
    }
    
    func initData() {
        SharedManager.shared.addContact(MContact(phone: "MuhammadAli", name: "+998 90 053 00 43"))
        self.list = SharedManager.shared.getUserContacts()
    }
    
    func deleteItem(at row: Int) {
        if row < self.list.count {
            SharedManager.shared.deleteContact(self.list[row])
        }
        self.list = SharedManager.shared.getUserContacts()
        self.delegate.reloadAllData()
    }
    
    
    
    func dataForRow(at index: IndexPath) -> MContact {
        return list[index.row]
    }
    
    func numbersOfRows(_ section: Int) -> Int {
        guard section < self.list.count else {
            return 0
        }
        return self.list.count
    }
    
    
    func headerTitle(_ section: Int) -> String? {
        guard section < self.list.count else {
            return nil
        }
        
        switch section {
        case 0: return "My Contact"
        default: return nil
        }
        
    }
    
}
