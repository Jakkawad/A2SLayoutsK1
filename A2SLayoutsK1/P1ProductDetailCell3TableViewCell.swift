//
//  P1ProductDetailCell3TableViewCell.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/16/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class P1ProductDetailCell3TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P1ProductDetailCell0CollectionViewCell
        let dummyImageURL = NSURL(string: dummyImage("100x100"))
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
