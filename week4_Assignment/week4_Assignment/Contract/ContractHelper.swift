//
//  ContractHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

extension Contract {
    
    static func createModule() -> UIViewController? {
        
        if let mainView = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainView") as? MainView {
            
            let mainViewPresenter = MainViewPresenter()
            let mainViewInteractor = MainViewInteractor()
            
            mainView.mainViewPresenter = mainViewPresenter
            mainViewPresenter.mainView = mainView
            mainViewPresenter.mainViewInteractor = mainViewInteractor
            mainViewInteractor.mainViewPresenter = mainViewPresenter
            
            return mainView
        }
        
        return nil
    }
}
