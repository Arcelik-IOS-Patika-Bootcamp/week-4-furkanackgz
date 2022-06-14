//
//  Presenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class MainViewPresenter: Contract.mainViewPresenter {
    
    var mainView: Contract.mainView?
    var mainViewInteractor: Contract.mainViewInteractor!
    
    var cryptoCurrencyView: Contract.cryptoCurrencyView?
    var currencyViewPresenter: Contract.currencyViewPresenter!
    
    var router: Contract.router!
    
    // View related functions
    func viewDidload() {
        mainViewInteractor.fetchMainViewData()
    }
    
    func buttonAddTapped() {
        
    }
    
    func buttonAscendantsTapped() {
        return
    }
    
    func buttonDescendantsTapped() {
        return
    }
    
    // Interactor related functions
    func didDataFetch() {
        guard let items = mainViewInteractor.mainViewData else { return }
        
        mainView?.updateFavoritesTableView(items)
        mainView?.updateAscDesTableView(items)
        
    }
    
}
