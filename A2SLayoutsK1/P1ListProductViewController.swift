//
//  P1ListProductViewController.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import MapleBacon

class P1ListProductViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var dummyImage = NSURL(string: "http://placehold.it/170x140")
    
    var dataArray = NSArray()
    var productDetail:AnyObject!
    
    func loadData() {
        Alamofire.request(.POST, baseURL.urlAPI, parameters: ["api":"product_categoryid", "product_categoryid":"3"]).responseJSON { response in
            self.dataArray = response.result.value as! NSArray
            self.tableView.reloadData()
            //print(self.dataArray.description)
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? P1ListProductCell0TableViewCell
        //cell0?.imageViewProduct.setImageWithURL(dummyImage!)
        let item = dataArray[indexPath.row] as! NSDictionary
        
        cell0?.lblProductName.text = item.objectForKey("ProductName") as? String
        cell0?.lblPrice.text = item.objectForKey("ProductPrice") as? String
        let imageItemURL = item.objectForKey("ProductShowImage") as? String
        let imageURL = NSURL(string: imageItemURL!)
        cell0?.imageViewProduct.setImageWithURL(imageURL!)
        return cell0!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var indexPath:NSIndexPath = self.tableView.indexPathForSelectedRow!
        if segue.identifier == "ProductDetailSegue" {
            let DetailVC = segue.destinationViewController as! P1ProductDetailViewController
            //DetailVC.title = dataArray[indexPath.row] as! String
            DetailVC.productDetail = dataArray[indexPath.row] as! NSDictionary
            //print(DetailVC.productDetail.description)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadData()
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
