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
    func moveToCurrencyView(_ mainModuleView: MainModuleView) {
        
        // Initilization of Currency Module
        if let currencyModuleView = CurrencyModuleContract.createCurrencyModule() {

            // Setting up Currency View Controller
            currencyModuleView.viewDidLoad()

            // Navigating to Currency View Controller
            mainModuleView.present(currencyModuleView, animated: true)
            
            //mainModuleView.navigationController?.pushViewController(currencyModuleView, animated: true)
        }
        
    }
}
