//
//  CurrencyViewPresenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

class CurrencyModulePresenter: CurrencyModuleContract.currencyModulePresenter {
    
    var currencyModuleView: CurrencyModuleContract.currencyModuleView?
    var currencyModuleInteractor: CurrencyModuleContract.currencyModuleInteractor!
    var currencyModuleRouter: CurrencyModuleContract.currencyModuleRouter!
    
    var mainModuleRouter: MainModuleContract.mainModuleRouter!
    
    var mainModulePresenter: MainModuleContract.mainModulePresenter?
    
    func viewDidload() {
        currencyModuleInteractor.fetchCurrencyModuleData()
    }
    
    func didDataFetch() {
        guard let items = currencyModuleInteractor.currencyModuleData else { return }
        
        currencyModuleView?.updateCollectionView(items)
        
    }
    
}
