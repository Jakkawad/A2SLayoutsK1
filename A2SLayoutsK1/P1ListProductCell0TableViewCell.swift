//
//  P1ListProductCell0TableViewCell.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class P1ListProductCell0TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblPriceName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblShipping: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
