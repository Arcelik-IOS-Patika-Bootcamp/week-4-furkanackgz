//
//  CurrencyViewPresenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

class CurrencyViewPresenter: Contract.currencyViewPresenter {
    
    var cryptoCurrencyView: Contract.cryptoCurrencyView?
    var currencyViewInteractor: Contract.currencyViewInteractor!
    
    var router: Contract.router!
    
    var mainViewPresenter: Contract.mainViewPresenter?
    
    func viewDidload() {
        currencyViewInteractor.fetchCurrencyViewData()
    }
    
    func didDataFetch() {
        guard let items = currencyViewInteractor.currencyViewData else { return }
        
        cryptoCurrencyView?.updateCollectionView(items)
        
    }
    
}
