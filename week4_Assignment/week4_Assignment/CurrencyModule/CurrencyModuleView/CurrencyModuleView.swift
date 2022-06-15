//
//  CryptoCurrenciesViewController.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class CurrencyModuleView: UIViewController, CurrencyModuleContract.currencyModuleView {
    
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter!
    
    private var collectionViewHelper: CollectionViewHelper!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        currencyModulePresenter.viewDidload()
    }

}

extension CurrencyModuleView {
    
    func setupUI() {
        if let collectionView = collectionView {
            collectionViewHelper = .init(with: collectionView, currencyModulePresenter)
        }
    }
}

// MARK: - Crypto Currency Protocol Methods
extension CurrencyModuleView {
    
    func updateCollectionView(_ items: [CryptoCurrency]) {
        collectionViewHelper.setItems(items)
    }
}
