//
//  Page5ViewController.swift
//  A2SLayoutsK1
//
//  Created by admin on 5/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page5ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0)
        return cell0!
        */
        if indexPath.row == 0 {
            let headerCell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.headerCell0) as? P5HeaderCell0TableViewCell
            return headerCell0!
        } else if indexPath.row == 1 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0) as? P5Cell0TableViewCell
            return cell0!
        } else if indexPath.row == 2 {
            let headerCell1 = tableView.dequeueReusableCellWithIdentifier(baseCell.headerCell1) as? P5HeaderCell1TableViewCell
            return headerCell1!
        } else if indexPath.row == 3 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell1) as? P5Cell1TableViewCell
            return cell1!
        } else {
            let cell2 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell2)
            
            return cell2!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 24
        } else if indexPath.row == 1 {
            return 200
        } else if indexPath.row == 2 {
            return 24
        } else if indexPath.row == 3 {
            return 200
        } else if indexPath.row == 4 {
            return 420
        } else {
            return 100
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
