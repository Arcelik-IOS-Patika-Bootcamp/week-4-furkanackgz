//
//  Presenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class MainModulePresenter: MainModuleContract.mainModulePresenter {
    
    var mainModuleView: MainModuleContract.mainModuleView?
    var mainModuleInteractor: MainModuleContract.mainModuleInteractor!
    
    var currencyModuleView: CurrencyModuleContract.currencyModuleView?
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter!
    
    var mainModuleRouter: MainModuleContract.mainModuleRouter!
    
    // View related functions
    func viewDidload() {
        mainModuleInteractor.fetchMainModuleData()
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
        guard let items = mainModuleInteractor.mainModuleData else { return }
        
        mainModuleView?.updateFavoritesTableView(items)
        mainModuleView?.updateAscDesTableView(items)
        
    }
    
}
