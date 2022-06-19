//
//  MainViewHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit
import Kingfisher

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
        currensies += items
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
        if let imageUrl = currensies[indexPath.row].image {
            cell.cellImageView.kf.setImage(with: URL(string: imageUrl))
        }
        cell.labelName.text = currensies[indexPath.row].name
        
        if let percentage = currensies[indexPath.row].priceChangePercentage24h {
            cell.labelPercentage.text = "% " + String(format: "%.2f", percentage)
            
            if percentage >= 0 {
                cell.percentageBackground.backgroundColor = .systemGreen
                cell.percentageBackground.layer.cornerRadius = 8
            } else {
                cell.percentageBackground.backgroundColor = .systemRed
                cell.percentageBackground.layer.cornerRadius = 8
            }
        }
        
        return cell
    }
    
}
