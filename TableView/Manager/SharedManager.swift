//
//  SharedManager.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import UIKit


class SharedManager {
    
    static let shared: SharedManager = SharedManager()
    
    private let localePreference = UserDefaults.standard
    
    func getUserContacts() -> [MContact] {
        if let allCons = localePreference.array(forKey: .sharedKeyUserContact) as? [[String: String]] {
            return allCons.contacts()
        }
        return []
    }
    
    func addContact(_ contact: MContact) {
        var allCons = SharedManager.shared.getUserContacts()
        allCons.append(contact)
        self.setContact(allCons)
    }
    
    func deleteContact(_ contact: MContact) {
        var allCons = SharedManager.shared.getUserContacts()
        for i in 0 ..< allCons.count {
            if allCons[i].phone == contact.phone {
                allCons.remove(at: i)
                break
            }
        }
        self.setContact(allCons)
    }
    
    func setContact(_ contact: [MContact]){
        localePreference.setValue(contact.dictionaryArray(), forKey: .sharedKeyUserContact)
        localePreference.synchronize()
    }
    
    
    
    
    
    
    func getInt(_ key: String) -> Int {
        return localePreference.integer(forKey: key)
    }
    
    func setInt(data: Int, _ key: String) {
        return localePreference.setValue(data, forKey: key)
    }
    
    func removeInt(_ key: String) {
        localePreference.removeObject(forKey: key)
    }
    
    
    
    
    
    
    func getUserScore() -> Int {
        return localePreference.integer(forKey: .sharedKeyUserContact)
    }
    
    func setUserScore(_ score: Int) {
        return localePreference.set(score, forKey: .sharedKeyUserContact)
    }
    
    func removeUserScore() {
        localePreference.removeObject(forKey: .sharedKeyUserContact)
    }
    
    func logOut() {
        localePreference.removeObject(forKey: .sharedKeyUserContact)
    }
    
    
}
