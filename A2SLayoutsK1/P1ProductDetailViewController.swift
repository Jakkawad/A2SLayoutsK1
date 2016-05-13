//
//  P1ProductDetailViewController.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/11/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class P1ProductDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var baseURL = NSURL(string: "http://placehold.it/280x280")
     var productDetail:AnyObject!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 3
        if section == 0 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? P1ProductDetailCell0TableViewCell
        cell0?.imageViewProduct.setImageWithURL(baseURL!)
        return cell0!
        */
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? P1ProductDetailCell0TableViewCell
                let item = productDetail as! NSDictionary
                cell0?.lblProductName.text = item.objectForKey("ProductName") as? String
                cell0?.lblProductPrice.text = item.objectForKey("ProductPrice") as? String
                let imageItemURL = item.objectForKey("ProductShowImage") as? String
                let imageURL = NSURL(string: imageItemURL!)
                cell0?.imageViewProduct.setImageWithURL(imageURL!)
                return cell0!
            } else if indexPath.row == 1 {
                let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? P1ProductDetailCell1TableViewCell
                return cell1!
            } else {
                let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
                
                return cell2!
            }
        } else {
            if indexPath.row == 0 {
                let cell0s = tableView.dequeueReusableCellWithIdentifier("tableCell0s")
                return cell0s!
            } else {
                let cell1s = tableView.dequeueReusableCellWithIdentifier("tableCell1s")
                
                return cell1s!
            }
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        /*
        if indexPath.row == 0 {
            return 350
        } else {
            return 100
        }
        */
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 350
            } else {
                return 100
            }
        } else {
            if indexPath.row == 1 {
                return 100
            } else {
                return 100
            }
        }
    }
    /*
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "Shipping, Returns & Payments"
        if section == 0 {
            return "11"
        } else {
            return "22"
        }
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()

        //let item = productDetail as! NSDictionary
        //self.title = item.objectForKey("ProductName") as? String
        //basePass.productDetailPass = productDetail as! NSDictionary
        //print(basePass.productDetailPass)
        // Do any additional setup after loading the view.
        tableView.registerNib(UINib(nibName: "P1ProductDetailCell0TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell0")
        tableView.registerNib(UINib(nibName: "P1ProductDetailCell1TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell1")
        
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
