//
//  CryptoCollectionViewCell.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

class CryptoCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelSymbol: UILabel!
    @IBOutlet weak var labelLastPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configuring container view apperance.
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 8
        containerView.layer.borderWidth = 1
        containerView.layer.borderColor = UIColor.lightGray.cgColor
    }

}
