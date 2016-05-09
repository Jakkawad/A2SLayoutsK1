//
//  Cell0TableViewCell.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/9/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Cell0TableViewCell: UITableViewCell {

    @IBOutlet weak var lblCategoryName:UILabel!
    @IBOutlet weak var imageViewProduct1:UIImageView!
    @IBOutlet weak var imageViewProduct2:UIImageView!
    @IBOutlet weak var imageViewProduct3:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
