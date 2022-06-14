//
//  Contract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    var presenter: Contract.presenter! { get set }
    
    func updateFavoritesTableView(_ items: [CryptoCurrency])
    func updateAscDesTableView(_ items: [CryptoCurrency])
}

protocol CryptoCurrencyViewProtocol: AnyObject {
    var presenter: Contract.presenter! { get set }
    
    func updateCollectionView(_ items: [CryptoCurrency])
}

protocol PresenterProtocol: AnyObject {
    var mainView: Contract.mainView? { get set }
    var cryptoCurrencyView: Contract.cryptoCurrencyView? { get set }
    var interactor: Contract.interactor! { get set }
    var router: Contract.router! { get set }
    
    func viewDidload()
    func buttonAddTapped()
    func buttonAscendantsTapped()
    func buttonDescendantsTapped()
    
    func didDataFetch()
}

protocol InteractorProtocol: AnyObject {
    var presenter: Contract.presenter? { get set }
    
    var data: [CryptoCurrency]? { get }
    
    func fetchData()
}

protocol EntityProtocol: AnyObject { }

protocol RouterProtocol: AnyObject {
    var presenter: Contract.presenter? { get set }
}

struct Contract {
    typealias mainView = MainViewProtocol
    typealias cryptoCurrencyView = CryptoCurrencyViewProtocol
    typealias interactor = InteractorProtocol
    typealias presenter = PresenterProtocol
    typealias entity = EntityProtocol
    typealias router = RouterProtocol
}
