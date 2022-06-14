//
//  CurrencyModuleContract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

protocol CurrencyModuleViewProtocol: AnyObject {
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter! { get set }
    
    func updateCollectionView(_ items: [CryptoCurrency])
}

protocol CurrencyModulePresenterProtocol: AnyObject {
    var currencyModuleView: CurrencyModuleContract.currencyModuleView? { get set }
    var currencyModuleInteractor: CurrencyModuleContract.currencyModuleInteractor! { get set }
    var currencyModuleRouter: CurrencyModuleContract.currencyModuleRouter! { get set}
    
    var mainModulePresenter: MainModuleContract.mainModulePresenter? { get set }
    var mainModuleRouter: MainModuleContract.mainModuleRouter! { get set }
    
    func viewDidload()
    
    func didDataFetch()
}

protocol CurrencyModuleInteractorProtocol: AnyObject {
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter? { get set }
    
    var currencyModuleData: [CryptoCurrency]? { get }
    
    func fetchCurrencyModuleData()
}

protocol CurrencyModuleEntityProtocol: AnyObject { }

protocol CurrencyModuleRouterProtocol: AnyObject {
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter? { get set }
    var mainModulePresenter: MainModuleContract.mainModulePresenter? { get set }
    
    func moveToMainView()
}

struct CurrencyModuleContract {
    typealias currencyModuleView = CurrencyModuleViewProtocol
    typealias currencyModuleInteractor = CurrencyModuleInteractorProtocol
    typealias currencyModulePresenter = CurrencyModulePresenterProtocol
    typealias currencyModuleEntity = CurrencyModuleEntityProtocol
    typealias currencyModuleRouter = CurrencyModuleRouterProtocol
}
