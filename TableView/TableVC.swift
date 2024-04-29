//
//  TableVC.swift
//  TableView
//
//  Created by MuhammadAli on 18/01/24.
//

import UIKit

let windowWidth = UIScreen.main.bounds.width
let windowHeight = UIScreen.main.bounds.height

class TableVC: UIViewController, TableVcDelegate {
    
    
    
    var tableView : UITableView!
    
    var viewModel : TableVCviewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = TableVCviewModel(self)
        self.view.backgroundColor = .white
        iniTableView()
    }
    
    func iniTableView() {
        tableView = UITableView(frame: CGRect.defaultValue , style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.backgroundColor = .white
        
        self.view.addSubview(self.tableView)
        self.viewModel.getUserData()
    }
    
    func initSwipe() {
        let swipeDelete = UISwipeGestureRecognizer(target: self, action: #selector(deletSwipe(_:)))
//        swipeDelete
    }
    
    @objc func deletSwipe(_ gesture: UISwipeGestureRecognizer) {
        
    }
    
    func reloadAllData() {
        self.tableView.reloadData()
    }
    
    func reloadData(_ section: Int) {
        self.tableView.reloadSections([section], with: .fade)
    }

   

}
