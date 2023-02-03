//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Akshay Yendhe on 11/01/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView : UIImageView!
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var priceLabel : UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
