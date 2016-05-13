//
//  Page1ViewController.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/9/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class Page1ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
    var baseURL = NSURL(string: "http://placehold.it/170x140")
    var dataArray = NSArray()
    
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"category","category":"all"])
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
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as? P1CategoryCollectionViewCell
        let item = dataArray[indexPath.row] as! NSDictionary
        col0?.imageViewCategory.setImageWithURL(baseURL!)
        col0?.lblCategoryName.text = item.objectForKey("CategoryName") as? String
        return col0!
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        //self.performSegueWithIdentifier("showView", sender: self)
        
        
        
    }
    /*
    @IBAction func btnPopOver(sender: AnyObject) {
        //self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView"
        {
            var vc = segue.destinationViewController as! UIViewController
            var controller = vc.popoverPresentationController
            
            if controller != nil {
                controller?.delegate = self
            }
        }
    }
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadData()
        
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 16/255, green: 132/255, blue: 142/255, alpha: 1.0)
        self.title = "All2Sale"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
