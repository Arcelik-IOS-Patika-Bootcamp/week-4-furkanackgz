//
//  Interactor.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class MainViewInteractor: Contract.mainViewInteractor {
    
    var mainViewData: [CryptoCurrency]?
    
    var mainViewPresenter: Contract.mainViewPresenter?
    
}

// MARK: - Main View Related Methods
extension MainViewInteractor {
    
    func fetchMainViewData() {
        WebService.run.fetchCryptoCurrencies { [unowned self] data in
            self.mainViewData = data
            
            DispatchQueue.main.async {
                self.mainViewPresenter?.didDataFetch()
            }
            
        }
    }
}
