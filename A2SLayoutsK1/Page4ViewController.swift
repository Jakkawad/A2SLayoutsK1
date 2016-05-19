//
//  Page4ViewController.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire

class Page4ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var array = [["1"],["2"]]
    var dataArray = NSArray()
    
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"category", "category":"all"]).responseJSON { response in
            //print(response.request)
            //print(response.response)
            //print(response.data)
            //print(response.result)
            //print(response.result.value)
            self.dataArray = response.result.value as! NSArray
            //print(self.dataArray.description)
            self.tableView.reloadData()
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //print(array.count)
        //return array.count
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(array[section].count)
        //return array[section].count
        //return dataArray.count
        if section == 0 {
            return dataArray.count
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        //cell0?.textLabel?.text = array[indexPath.section][indexPath.row]
        //return cell0!
        /*
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            
            return cell0!
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            
            return cell1!
        }
        */
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            let item = self.dataArray[indexPath.row] as! NSDictionary
            
            cell0?.textLabel?.text = item.objectForKey("CategoryName") as? String
            return cell0!
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            
            return cell1!
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell0 = tableView.dequeueReusableCellWithIdentifier("headerCell0")
        headerCell0?.textLabel?.text = "DDLL"
        return headerCell0
    }
    /*
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Shipping, Returns & Payments"
    }
    */
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
