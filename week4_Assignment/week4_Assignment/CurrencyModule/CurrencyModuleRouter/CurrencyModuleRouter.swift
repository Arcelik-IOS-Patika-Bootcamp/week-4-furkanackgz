//
//  CurrencyModuleRouter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

class CurrencyModuleRouter: CurrencyModuleContract.currencyModuleRouter {
    
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter?

    var mainModulePresenter: MainModuleContract.mainModulePresenter?

}

extension CurrencyModuleRouter {
    
    func moveToMainView(_ currencyModuleView: CurrencyModuleView) {
        currencyModuleView.navigationController?.popViewController(animated: true)
    }
}
