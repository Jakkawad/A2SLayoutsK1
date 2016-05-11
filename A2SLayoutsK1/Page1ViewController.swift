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

class Page1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var baseURL = NSURL(string: "http://placehold.it/240x180")
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
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 1
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Cell0TableViewCell
        let item = self.dataArray[indexPath.row] as! NSDictionary
        
        cell0?.lblCategoryName.text = item.objectForKey("CategoryName") as? String
        //cell0?.lblCategoryName.text = "AAAAAA"
        let imageViewProductURL = item.objectForKey("ProductShowImage") as? String
        //print(imageViewProductURL)
        
        let categoryID = item.objectForKey("1")
            as? String
        //print(categoryID)
        cell0?.imageViewProduct1.setImageWithURL(baseURL!)
        
        return cell0!
    }
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
