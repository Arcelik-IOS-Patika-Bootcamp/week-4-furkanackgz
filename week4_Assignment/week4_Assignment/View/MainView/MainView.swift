//
//  ViewController.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 12.06.2022.
//

import UIKit

class MainView: UIViewController, Contract.mainView  {

    @IBOutlet weak var labelFavorites: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var tableViewFavorites: UITableView!
    @IBOutlet weak var buttonAscendants: UIButton!
    @IBOutlet weak var buttonDescendants: UIButton!
    @IBOutlet weak var tableViewAscDes: UITableView!
    
    var presenter: Contract.presenter!
    
    private var favoritesTableViewHelper: FavoritesTableViewHelper!
    private var ascDesTableViewHelper: AscDesTableViewHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        presenter.viewDidload()
    }
    
    @IBAction func buttonAddTapped(_ sender: Any) {
        presenter.buttonAddTapped()
    }
    
    @IBAction func buttonAscendantsTapped(_ sender: Any) {
        presenter.buttonAscendantsTapped()
    }
    
    @IBAction func buttonDescendantsTapped(_ sender: Any) {
        presenter.buttonDescendantsTapped()
    }
    
}

extension MainView {
    
    func setupUI() {
        favoritesTableViewHelper = .init(with: tableViewFavorites)
        ascDesTableViewHelper = .init(with: tableViewAscDes)
    }
}

// MARK: - Presenter Related
extension MainView {
    
    func updateFavoritesTableView(_ items: [CryptoCurrency]) {
        favoritesTableViewHelper.setItems(items)
    }
    
    func updateAscDesTableView(_ items: [CryptoCurrency]) {
        ascDesTableViewHelper.setItems(items)
    }
}
