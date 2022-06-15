//
//  CurrencyModuleContractHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

extension CurrencyModuleContract {
    
    static func createCurrencyModule(_ mainModuleView: MainModuleView) -> UIViewController? {
        
        if let currencyModuleView = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyModuleView") as? CurrencyModuleView {
            
            // Currency View Related Initialization
            let currencyModulePresenter = CurrencyModulePresenter()
            let currencyModuleInteractor = CurrencyModuleInteractor()
            let currencyModuleRouter = CurrencyModuleRouter()
            let mainModulePresenter = MainModulePresenter()
            
            // Currency View Presenter-View binding
            currencyModuleView.currencyModulePresenter = currencyModulePresenter
            currencyModulePresenter.currencyModuleView = currencyModuleView
            
            // Currency View Presenter-Interactor binding
            currencyModulePresenter.currencyModuleInteractor = currencyModuleInteractor
            currencyModuleInteractor.currencyModulePresenter = currencyModulePresenter
            
            // Currency View Presenter-Router binding
            currencyModulePresenter.currencyModuleRouter = currencyModuleRouter
            currencyModuleRouter.currencyModulePresenter = currencyModulePresenter
            
            // Currency View Presenter-Main Module Presenter binding
            currencyModulePresenter.mainModulePresenter = mainModulePresenter
            mainModulePresenter.currencyModulePresenter = currencyModulePresenter
            
            // Currency View Presenter-Main Module View binding
            currencyModulePresenter.mainModuleView = mainModuleView
            mainModuleView.currencyModulePresenter = currencyModulePresenter
            
            return currencyModuleView
        }
        
        return nil
    }
}

