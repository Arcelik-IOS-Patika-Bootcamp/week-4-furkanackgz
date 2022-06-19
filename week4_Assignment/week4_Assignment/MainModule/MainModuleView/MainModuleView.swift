//
//  ViewController.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 12.06.2022.
//

import UIKit

class MainModuleView: UIViewController, MainModuleContract.mainModuleView  {

    @IBOutlet weak var labelFavorites: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var tableViewFavorites: UITableView!
    @IBOutlet weak var tableViewAscDes: UITableView!
    
    var mainModulePresenter: MainModuleContract.mainModulePresenter!
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter!
    
    private var favoritesTableViewHelper: FavoritesTableViewHelper!
    private var ascDesTableViewHelper: AscDesTableViewHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        mainModulePresenter.viewDidload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainModulePresenter.hideNavigationBar(self)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mainModulePresenter.exposeNavigationBar(self)
    }
    
    @IBAction func buttonAddTapped(_ sender: Any) {
        mainModulePresenter.buttonAddTapped()
    }
    
}

extension MainModuleView {
    
    func setupUI() {
        favoritesTableViewHelper = .init(with: tableViewFavorites)
        ascDesTableViewHelper = .init(with: tableViewAscDes)
    }
}

// MARK: - Presenter Related
extension MainModuleView {
    
    func updateFavoritesTableView(_ items: [CryptoCurrency]) {
        favoritesTableViewHelper.setItems(items)
    }
    
    func updateAscDesTableView(_ items: [CryptoCurrency]) {
        ascDesTableViewHelper.setItems(items)
    }
}
