//
//  MainViewHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class MainTableViewHelper: NSObject {
    
    private var currensies: [CryptoCurrency] = []
    
    weak var tableView: UITableView?
    
    init(with tableView: UITableView) {
        super.init()
        
        self.tableView = tableView
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        registerCell()
    }
    
}


extension MainTableViewHelper {
    
    func registerCell() {
        
    }
}

// MARK: - Table View related functions
extension MainTableViewHelper: UITableViewDelegate { }

extension MainTableViewHelper: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currensies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        return cell
    }
    
}
