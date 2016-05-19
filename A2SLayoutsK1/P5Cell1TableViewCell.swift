//
//  P5Cell1TableViewCell.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import MapleBacon

class P5Cell1TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P5Cell1CollectionViewCell
        let dummyImageURL = NSURL(string: dummyImage("100x100"))
        col0?.lblProductName.text = "Torem"
        col0?.lblProductPrice.text = "197.50"
        col0?.imageViewProduct.setImageWithURL(dummyImageURL!)
        return col0!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
