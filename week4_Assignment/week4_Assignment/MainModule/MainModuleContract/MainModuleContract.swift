//
//  Contract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

protocol MainModuleViewProtocol: AnyObject {
    var mainModulePresenter: MainModuleContract.mainModulePresenter! { get set }
    
    func updateFavoritesTableView(_ items: [CryptoCurrency])
    func updateAscDesTableView(_ items: [CryptoCurrency])
}

protocol MainModulePresenterProtocol: AnyObject {
    var mainModuleView: MainModuleContract.mainModuleView? { get set }
    var mainModuleInteractor: MainModuleContract.mainModuleInteractor! { get set }
    var mainModuleRouter: MainModuleContract.mainModuleRouter! { get set }
    
    var currencyModuleView: CurrencyModuleContract.currencyModuleView? { get set }
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter! { get set }
    
    func viewDidload()
    func buttonAddTapped()
    
    func didDataFetch()
}

protocol MainModuleInteractorProtocol: AnyObject {
    var mainModulePresenter: MainModuleContract.mainModulePresenter? { get set }
    
    var mainModuleData: [CryptoCurrency]? { get }
    
    func fetchMainModuleData()
}

protocol MainModuleEntityProtocol: AnyObject { }

protocol MainModuleRouterProtocol: AnyObject {
    var mainModulePresenter: MainModuleContract.mainModulePresenter? { get set }
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter? { get set }
    
    func moveToCurrencyView(_ mainModuleView: MainModuleView)
}

struct MainModuleContract {
    typealias mainModuleView = MainModuleViewProtocol
    typealias mainModuleInteractor = MainModuleInteractorProtocol
    typealias mainModulePresenter = MainModulePresenterProtocol
    typealias mainModuleEntity = MainModuleEntityProtocol
    typealias mainModuleRouter = MainModuleRouterProtocol
}
