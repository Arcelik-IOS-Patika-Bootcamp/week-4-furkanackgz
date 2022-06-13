//
//  Presenter.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class Presenter: Contract.Presenter {
    
    var homeView: Contract.HomeView?
    var cryptoCurrencyView: Contract.CryptoCurrencyView?
    
    var interactor: Contract.Interactor!
    
    var router: Contract.Router!
    
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
