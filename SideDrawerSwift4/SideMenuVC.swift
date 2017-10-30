//
//  SideMenuVC.swift
//  SideDrawerSwift4
//
//  Created by Tushar on 10/10/17.
//  Copyright © 2017 Tushar. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController
{

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profile", for: indexPath)
        return cell
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
   {
        print(indexPath.row)
    
    NotificationCenter.default.post(name:NSNotification.Name("navigate"), object: nil)
   }

}
