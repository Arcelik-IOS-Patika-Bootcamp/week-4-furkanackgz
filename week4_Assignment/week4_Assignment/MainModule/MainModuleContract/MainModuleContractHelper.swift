//
//  ContractHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

extension MainModuleContract {
    
    static func createMainModule() -> UIViewController? {
        
        if let mainModuleView = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainModuleView") as? MainModuleView {
            
            // Main View Related Initialization
            let mainModulePresenter = MainModulePresenter()
            let mainModuleInteractor = MainModuleInteractor()
            let mainModuleRouter = MainModuleRouter()
            
            // Main View Presenter-View binding
            mainModuleView.mainModulePresenter = mainModulePresenter
            mainModulePresenter.mainModuleView = mainModuleView
            
            // Main View Presenter-Interactor binding
            mainModulePresenter.mainModuleInteractor = mainModuleInteractor
            mainModuleInteractor.mainModulePresenter = mainModulePresenter
            
            // Main View Presenter-Router binding
            mainModulePresenter.mainModuleRouter = mainModuleRouter
            mainModuleRouter.mainModulePresenter = mainModulePresenter
            
            return mainModuleView
        }
        
        return nil
    }
}
