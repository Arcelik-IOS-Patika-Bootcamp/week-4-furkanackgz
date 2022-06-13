//
//  FavoriteTableViewCell.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var labelSymbol: UILabel!
    @IBOutlet weak var labelVolume: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelPercent: UILabel!
    @IBOutlet weak var labelChange: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
