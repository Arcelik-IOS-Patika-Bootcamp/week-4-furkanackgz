//
//  Router.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

class MainModuleRouter: MainModuleContract.mainModuleRouter {
    
    var mainModulePresenter: MainModuleContract.mainModulePresenter?
    
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter?
    
}

extension MainModuleRouter {
    func moveToCurrencyView() {
        // create module gelecek
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyModuleView") as? CurrencyModuleView {
            
            UINavigationController().pushViewController(vc, animated: true)
            currencyModulePresenter?.viewDidload()
        }
        
    }
}
