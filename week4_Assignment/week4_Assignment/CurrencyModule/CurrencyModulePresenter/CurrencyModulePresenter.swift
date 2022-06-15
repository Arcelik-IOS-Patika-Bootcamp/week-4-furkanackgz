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
    
    var mainModuleView: MainModuleContract.mainModuleView?
    var mainModulePresenter: MainModuleContract.mainModulePresenter?
    var mainModuleRouter: MainModuleContract.mainModuleRouter!
    
    func viewDidload() {
        currencyModuleInteractor.fetchCurrencyModuleData()
    }
    
    func didSelectItemAt(_ item: CryptoCurrency) {

        var items: [CryptoCurrency] = []
        items.append(item)
        mainModuleView?.updateFavoritesTableView(items)
        currencyModuleRouter.moveToMainView(currencyModuleView as! CurrencyModuleView)
    }
    
    func didDataFetch() {
        guard let items = currencyModuleInteractor.currencyModuleData else { return }
        
        currencyModuleView?.updateCollectionView(items)
        
    }
    
}
