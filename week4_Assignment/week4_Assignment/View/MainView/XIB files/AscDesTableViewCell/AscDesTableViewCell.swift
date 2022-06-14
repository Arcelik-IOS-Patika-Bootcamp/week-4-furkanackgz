//
//  AscDesTableViewCell.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import UIKit

class AscDesTableViewCell: UITableViewCell {

    @IBOutlet weak var labelSymbol: UILabel!
    @IBOutlet weak var labelLastPrice: UILabel!
    @IBOutlet weak var labelPercent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
