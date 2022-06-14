//
//  CurrencyModuleContractHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

extension CurrencyModuleContract {
    
    static func createCurrencyModule() -> UIViewController? {
        
        if let currencyModuleView = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyModuleView") as? CurrencyModuleView {
            
            // Currency View Related Initialization
            let currencyModulePresenter = CurrencyModulePresenter()
            let currencyModuleInteractor = CurrencyModuleInteractor()
            let currencyModuleRouter = CurrencyModuleRouter()
            
            // Currency View Presenter-View binding
            currencyModuleView.currencyModulePresenter = currencyModulePresenter
            currencyModulePresenter.currencyModuleView = currencyModuleView
            
            // Main View Presenter-Interactor binding
            currencyModulePresenter.currencyModuleInteractor = currencyModuleInteractor
            currencyModuleInteractor.currencyModulePresenter = currencyModulePresenter
            
            // Main View Presenter-Router binding
            currencyModulePresenter.currencyModuleRouter = currencyModuleRouter
            currencyModuleRouter.currencyModulePresenter = currencyModulePresenter
            
            return currencyModuleView
        }
        
        return nil
    }
}

