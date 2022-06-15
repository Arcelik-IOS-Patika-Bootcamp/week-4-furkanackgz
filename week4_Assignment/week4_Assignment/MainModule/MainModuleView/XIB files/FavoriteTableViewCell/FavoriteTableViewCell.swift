//
//  FavoriteTableViewCell.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var labelSymbol: UILabel!
    @IBOutlet weak var labelVolume: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelPercent: UILabel!
    @IBOutlet weak var labelChange: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configuring container view apperance.
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 8
        containerView.layer.borderWidth = 1
        containerView.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
