//
//  Interactor.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class MainModuleInteractor: MainModuleContract.mainModuleInteractor {
    
    var mainModuleData: [CryptoCurrency]?
    
    var mainModulePresenter: MainModuleContract.mainModulePresenter?
    
}

// MARK: - Main View Related Methods
extension MainModuleInteractor {
    
    func fetchMainModuleData() {
        WebService.run.fetchCryptoCurrencies { [unowned self] data in
            self.mainModuleData = data
            
            DispatchQueue.main.async {
                self.mainModulePresenter?.didDataFetch()
            }
            
        }
    }
}
