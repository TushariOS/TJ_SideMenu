//
//  ViewController.swift
//  SideDrawerSwift4
//
//  Created by Tushar on 10/10/17.
//  Copyright © 2017 Tushar. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {


    @IBOutlet weak var sideMenuConstraints: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("Toggle"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @objc func toggleSideMenu()
    {
        if sideMenuOpen
        {
            sideMenuOpen = false
            sideMenuConstraints.constant = -240
        }
        else
        {
            sideMenuOpen = true
            sideMenuConstraints.constant = 0
        }
        
        UIView.animate(withDuration: 0.3)
        {
            self.view.layoutIfNeeded()
            
        }
    }

}

