//
//  Contract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    var presenter: Contract.Presenter! { get set }
    
    func updateFavoritesTableView()
    func updateAscDesTableView()
}

protocol CryptoCurrencyViewProtocol: AnyObject {
    var presenter: Contract.Presenter! { get set }
    
    func updateCollectionView()
}

protocol PresenterProtocol: AnyObject {
    var homeView: Contract.HomeView? { get set }
    var cryptoCurrencyView: Contract.CryptoCurrencyView? { get set }
    var interactor: Contract.Interactor! { get set }
    var router: Contract.Router! { get set }
    
    func viewDidload()
    func buttonAddTapped()
    func buttonAscendantsTapped()
    func buttonDescendantsTapped()
    
    func didFavoritesDataFetch()
    func didAscDesDataFetch()
}

protocol InteractorProtocol: AnyObject {
    var presenter: Contract.Presenter? { get set }
    
    var data: [CryptoCurrency]? { get }
    
    func fetchData()
}

protocol EntityProtocol: AnyObject { }

protocol RouterProtocol: AnyObject {
    var presenter: Contract.Presenter? { get set }
}

struct Contract {
    typealias HomeView = HomeViewProtocol
    typealias CryptoCurrencyView = CryptoCurrencyViewProtocol
    typealias Interactor = InteractorProtocol
    typealias Presenter = PresenterProtocol
    typealias Entity = EntityProtocol
    typealias Router = RouterProtocol
}
