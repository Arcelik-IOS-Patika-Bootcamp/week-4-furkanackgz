//
//  CollectionViewHelper.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit
import Kingfisher

class CollectionViewHelper: NSObject {
    
    private var currensies: [CryptoCurrency] = []
    
    var currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter!
    
    weak var collectionView: UICollectionView?
    
    init(with collectionView: UICollectionView, _ currencyModulePresenter: CurrencyModuleContract.currencyModulePresenter) {
        super.init()
        
        self.collectionView = collectionView
        self.currencyModulePresenter = currencyModulePresenter
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = self.createBasicListLayout()
        
        registerCell()
    }
    
}

extension CollectionViewHelper {
    
    func registerCell() {
        collectionView?.register(.init(nibName: "CryptoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CryptoCollectionViewCell")
    }
    
    func setItems(_ items: [CryptoCurrency]) {
        currensies = items
        collectionView?.reloadData()
    }
}

// MARK: - Collection View Delegation methods
extension CollectionViewHelper: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCurrency = currensies[indexPath.item]
        currencyModulePresenter.didSelectItemAt(selectedCurrency)
    }
}

extension CollectionViewHelper: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return currensies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CryptoCollectionViewCell", for: indexPath) as! CryptoCollectionViewCell
        if let imageUrl = currensies[indexPath.row].image {
            cell.imageView.kf.setImage(with: URL(string: imageUrl))
        }
        cell.labelSymbol.text = currensies[indexPath.row].name
        if let percentage = currensies[indexPath.row].priceChangePercentage24h {
            cell.labelLastPrice.text = "\(percentage)"
        }
        return cell
    }
    
}

// Collection View
extension CollectionViewHelper {
    
    func createBasicListLayout() -> UICollectionViewLayout {
        let fraction: CGFloat = 1 / 3
        let inset: CGFloat = 2.5
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(fraction), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(fraction))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}
