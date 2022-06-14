//
//  MainViewHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class FavoritesTableViewHelper: NSObject {
    
    private var currensies: [CryptoCurrency] = []
    
    weak var tableViewFavorites: UITableView?
    
    init(with tableViewFavorites: UITableView) {
        super.init()
        
        self.tableViewFavorites = tableViewFavorites
        
        self.tableViewFavorites?.delegate = self
        self.tableViewFavorites?.dataSource = self
        
        registerCell()
    }
    
}


extension FavoritesTableViewHelper {
    
    func registerCell() {
        tableViewFavorites?.register(.init(nibName: "FavoriteTableViewCell", bundle: nil), forCellReuseIdentifier: "FavoriteTableViewCell")
    }
    
    func setItems(_ items: [CryptoCurrency]) {
        currensies = items
        tableViewFavorites?.reloadData()
    }
}

// MARK: - Table View related functions
extension FavoritesTableViewHelper: UITableViewDelegate { }

extension FavoritesTableViewHelper: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currensies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteTableViewCell") as! FavoriteTableViewCell
        cell.labelSymbol.text = currensies[indexPath.row].symbol
        cell.labelVolume.text = currensies[indexPath.row].volume
        cell.labelPrice.text = currensies[indexPath.row].lastPrice
        cell.labelPercent.text = currensies[indexPath.row].priceChangePercent
        cell.labelChange.text = currensies[indexPath.row].priceChange
        return cell
    }
    
}
