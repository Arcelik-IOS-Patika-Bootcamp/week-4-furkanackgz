//
//  Presenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class Presenter: Contract.presenter {
    
    var mainView: Contract.mainView?
    var cryptoCurrencyView: Contract.cryptoCurrencyView?
    
    var interactor: Contract.interactor!
    
    var router: Contract.router!
    
    // View related functions
    func viewDidload() {
        <#code#>
    }
    
    func buttonAddTapped() {
        <#code#>
    }
    
    func buttonAscendantsTapped() {
        <#code#>
    }
    
    func buttonDescendantsTapped() {
        <#code#>
    }
    
    // Interactor related functions
    func didFavoritesDataFetch() {
        <#code#>
    }
    
    func didAscDesDataFetch() {
        <#code#>
    }
    
}
