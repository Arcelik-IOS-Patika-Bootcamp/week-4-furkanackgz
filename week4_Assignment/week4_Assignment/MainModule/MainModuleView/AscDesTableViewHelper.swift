//
//  AscDesTableViewHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

class AscDesTableViewHelper: NSObject {
    
    private var currencies: [CryptoCurrency] = []
    
    weak var tableViewAscDes: UITableView?
    
    init(with tableViewAscDes: UITableView) {
        super.init()
        
        self.tableViewAscDes = tableViewAscDes
        
        self.tableViewAscDes?.delegate  = self
        self.tableViewAscDes?.dataSource = self
        
        registerCell()
    }
    
}

extension AscDesTableViewHelper {
    
    func registerCell() {
        tableViewAscDes?.register(.init(nibName: "AscDesTableViewCell", bundle: nil), forCellReuseIdentifier: "AscDesTableViewCell")
    }
    
    func setItems(_ items: [CryptoCurrency]) {
        currencies = items
        tableViewAscDes?.reloadData()
    }
}

// MARK: - Table View related functions
extension AscDesTableViewHelper: UITableViewDelegate { }

extension AscDesTableViewHelper: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewAscDes?.dequeueReusableCell(withIdentifier: "AscDesTableViewCell") as! AscDesTableViewCell
        cell.labelSymbol.text = currencies[indexPath.row].symbol
        cell.labelLastPrice.text = currencies[indexPath.row].lastPrice
        cell.labelPercent.text = currencies[indexPath.row].priceChangePercent
        
        return cell
    }
    
}
