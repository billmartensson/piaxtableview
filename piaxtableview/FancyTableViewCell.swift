//
//  FancyTableViewCell.swift
//  piaxtableview
//
//  Created by Bill Martensson on 2021-09-27.
//

import UIKit

class FancyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fancyLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
