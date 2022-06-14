//
//  CryptoCurrenciesViewController.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class CryptoCurrenciesView: UIViewController, Contract.cryptoCurrencyView {
    
    var presenter: Contract.presenter!
    
    private var collectionViewHelper: CollectionViewHelper!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - Crypto Currency Protocol Methods
extension CryptoCurrenciesView {
    
    func updateCollectionView(_ items: [CryptoCurrency]) {
        collectionViewHelper.setItems(items)
    }
}
