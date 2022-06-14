//
//  CurrencyViewInteractor.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

class CurrencyModuleInteractor: CurrencyModuleContract.currencyModuleInteractor {
    
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter?
    
    var currencyModuleData: [CryptoCurrency]?
    
}

extension CurrencyModuleInteractor {
    
    func fetchCurrencyModuleData() {
        WebService.run.fetchCryptoCurrencies { [unowned self] data in
            self.currencyModuleData = data
            
            DispatchQueue.main.async {
                self.currencyModulePresenter?.didDataFetch()
            }
            
        }
    }
}
