//
//  Contract.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

protocol ViewProtocol: AnyObject {
    var presenter: Contract.Presenter! { get set }
    
    func updateFavoritesTableView()
    func updateAscDesTableView()
}

protocol PresenterProtocol: AnyObject {
    var view: Contract.View? { get set }
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
    typealias View = ViewProtocol
    typealias Interactor = InteractorProtocol
    typealias Presenter = PresenterProtocol
    typealias Entity = EntityProtocol
    typealias Router = RouterProtocol
}
