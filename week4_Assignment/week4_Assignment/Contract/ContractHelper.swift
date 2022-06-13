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
            
            let presenter = Presenter()
            let interactor = Interactor()
            
            mainView.presenter = presenter
            presenter.mainView = mainView
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return mainView
        }
        
        return nil
    }
}
