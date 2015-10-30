//
//  BackTableVC.swift
//  TourProject_1
//
//  Created by Naranbaatar Bayaraagiin on 10/30/15.
//  Copyright © 2015 Naranbaatar Bayaraagiin. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["title", "home", "nearby", "getdirections", "mostpopular", "searchbyregion", "searchbyactivitytype", "mytrip", "settings", "account", "sharethisapp"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var tbCell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell

        return tbCell
    }

}