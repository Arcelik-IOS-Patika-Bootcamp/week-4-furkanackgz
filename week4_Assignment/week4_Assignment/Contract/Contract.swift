//
//  Contract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    var mainViewPresenter: Contract.mainViewPresenter! { get set }
    
    func updateFavoritesTableView(_ items: [CryptoCurrency])
    func updateAscDesTableView(_ items: [CryptoCurrency])
}

protocol CryptoCurrencyViewProtocol: AnyObject {
    var currencyViewPresenter: Contract.currencyViewPresenter! { get set }
    
    func updateCollectionView(_ items: [CryptoCurrency])
}

protocol MainViewPresenterProtocol: AnyObject {
    var mainView: Contract.mainView? { get set }
    var mainViewInteractor: Contract.mainViewInteractor! { get set }
    
    var cryptoCurrencyView: Contract.cryptoCurrencyView? { get set }
    var currencyViewPresenter: Contract.currencyViewPresenter! { get set }
    
    var router: Contract.router! { get set }
    
    func viewDidload()
    func buttonAddTapped()
    func buttonAscendantsTapped()
    func buttonDescendantsTapped()
    
    func didDataFetch()
}

protocol CurrencyViewPresenterProtocol: AnyObject {
    var cryptoCurrencyView: Contract.cryptoCurrencyView? { get set }
    var currencyViewInteractor: Contract.currencyViewInteractor! { get set }
    
    var mainViewPresenter: Contract.mainViewPresenter? { get set }
    
    var router: Contract.router! { get set }
    
    func viewDidload()
    
    func didDataFetch()
}

protocol MainViewInteractorProtocol: AnyObject {
    var mainViewPresenter: Contract.mainViewPresenter? { get set }
    
    var mainViewData: [CryptoCurrency]? { get }
    
    func fetchMainViewData()
}

protocol CurrencyViewInteractorProtocol: AnyObject {
    var currencyViewPresenter: Contract.currencyViewPresenter? { get set }
    
    var currencyViewData: [CryptoCurrency]? { get }
    
    func fetchCurrencyViewData()
}

protocol EntityProtocol: AnyObject { }

protocol RouterProtocol: AnyObject {
    var mainViewPresenter: Contract.mainViewPresenter? { get set }
    var currencyViewPresenter: Contract.currencyViewPresenter? { get set }
}

struct Contract {
    typealias mainView = MainViewProtocol
    typealias cryptoCurrencyView = CryptoCurrencyViewProtocol
    typealias mainViewInteractor = MainViewInteractorProtocol
    typealias currencyViewInteractor = CurrencyViewInteractorProtocol
    typealias mainViewPresenter = MainViewPresenterProtocol
    typealias currencyViewPresenter = CurrencyViewPresenterProtocol
    typealias entity = EntityProtocol
    typealias router = RouterProtocol
}
