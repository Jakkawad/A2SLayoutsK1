//
//  P5Cell0TableViewCell.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class P5Cell0TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView:UICollectionView!
    
    var dataArray = NSArray()
    
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"productall","productall":"10"])
            .responseJSON { response in
                //print(response.request)  // original URL request
                //print(response.response) // URL response
                //print(response.data)     // server data
                //print(response.result)   // result of response serialization
                self.dataArray = response.result.value as! NSArray
                self.collectionView.reloadData()
                //print(self.dataArray)
        }
    }

    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P5Cell0CollectionViewCell
        let item = dataArray[indexPath.row] as! NSDictionary
        let imageUrl = item.objectForKey("ProductShowImage") as? String
        var wwwURL = "https://www.all2sale.com/store/"
        wwwURL += imageUrl!
        let imageURL2 = NSURL(string: wwwURL)!
        //let imageDummyURL = NSURL(string: "")
        col0?.imageViewProduct.setImageWithURL(imageURL2)
        col0?.lblProductName.text = item.objectForKey("ProductName") as? String
        col0?.lblProductPrice.text = item.objectForKey("ProductPrice") as? String
        return col0!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        loadData()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
