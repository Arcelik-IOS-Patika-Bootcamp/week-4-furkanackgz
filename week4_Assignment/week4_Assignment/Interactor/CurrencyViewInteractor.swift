//
//  CurrencyViewInteractor.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

class CurrencyViewInteractor: Contract.currencyViewInteractor {
    
    var currencyViewPresenter: Contract.currencyViewPresenter?
    
    var currencyViewData: [CryptoCurrency]?
    
}

extension CurrencyViewInteractor {
    
    func fetchCurrencyViewData() {
        WebService.run.fetchCryptoCurrencies { [unowned self] data in
            self.currencyViewData = data
            
            DispatchQueue.main.async {
                self.currencyViewPresenter?.didDataFetch()
            }
            
        }
    }
}
