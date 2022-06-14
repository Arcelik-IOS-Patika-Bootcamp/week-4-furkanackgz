//
//  Presenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class Presenter: Contract.presenter {
    
    var mainView: Contract.mainView?
    var cryptoCurrencyView: Contract.cryptoCurrencyView?
    
    var interactor: Contract.interactor!
    
    var router: Contract.router!
    
    // View related functions
    func viewDidload() {
        interactor.fetchData()
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
        guard let items = interactor.data else { return }
        
        mainView?.updateFavoritesTableView(items)
        mainView?.updateAscDesTableView(items)
        cryptoCurrencyView?.updateCollectionView(items)
    }
    
}
