//
//  P1ProductDetailViewController.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/14/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import MapleBacon

class P1ProductDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 3
        if section == 0 {
            return 2
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0) as? P1ProductDetailCell0TableViewCell
                let dummyImageURL = NSURL(string: dummyImage("300x300"))
                cell0?.imageViewBanner.setImageWithURL(dummyImageURL!)
                cell0?.lblProductName.text = dummyText()
                cell0?.lblProductPrice.text = dummyPrice()
                return cell0!
            } else if indexPath.row == 1 {
                let cell1 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell1) as? P1ProductDetailCell1TableViewCell
                cell1?.lblProductDescription.text = dummyText()
                
                return cell1!
            } else {
                let cellNill = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCellNill)
                
                return cellNill!

            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell3 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell2)
                
                return cell3!
            } else {
                let cellNill = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCellNill)
                
                return cellNill!
            }
        } else {
            if indexPath.row == 0 {
                let cell3 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell3)
                
                return cell3!
            } else {
                let cellNill = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCellNill)
                
                return cellNill!
        }
    }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 310
            } else if indexPath.row == 2 {
                return 400
            } else {
                return 100
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                return 100
            } else {
                return 100
            }
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                return 455
            } else {
                return 100
            }
        } else {
            return 100
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.min
        } else {
            return tableView.sectionHeaderHeight
        }
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "GGG"
        /*
        if section == 0 {
            return "About the Seller"
        } else scetion == 1 {
            return ""
        } else {
            return "AA"
        }
        */
        if section == 0 {
            return ""
        } else if section == 1 {
            return "About the Seller"
        } else if section == 2 {
            return "More like this"
        } else {
            return "section"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
