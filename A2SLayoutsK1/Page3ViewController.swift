//
//  Page3ViewController.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/12/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var array = [["Moscow", "Saint Petersburg", "Novosibirsk", "Novosibirsk", "Nizhny Novgorod", "Samara", "Omsk" ],["Kiyv", "Odessa", "Donetsk", "Harkiv", "Lviv", "Uzhgorod", "Zhytomyr", "Luhansk", "Mikolayv", "Kherson"],["Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Stuttgart", "Düsseldorf", "Dortmund", "Essen", "Bremen"]]

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        cell0?.textLabel?.text = array[indexPath.section][indexPath.row]
        return cell0!
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
