//
//  Page2ViewController.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class Page2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        
        return cell0!"
        */
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? C0TableViewCell
            
            let dummy300 = NSURL(string: dummyImage("300x300"))
            cell0?.imageView300.setImageWithURL(dummy300!)
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? C1TableViewCell
            let dummy300 = NSURL(string: dummyImage("300x300"))
            cell1?.imageView300.setImageWithURL(dummy300!)
            return cell1!
        } else {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2") as? C2TableViewCell
            let dummy200 = NSURL(string: dummyImage("200x200"))
            cell2?.imageView200.setImageWithURL(dummy200!)
            return cell2!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 300
        } else if indexPath.row == 1 {
            return 300
        } else {
            return 200
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //let dummy300 = NSURL(string: dummyImage("300x300"))
        //print(dummy300)
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
