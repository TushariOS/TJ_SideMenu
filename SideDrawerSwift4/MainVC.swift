//
//  MainVC.swift
//  SideDrawerSwift4
//
//  Created by Tushar on 10/10/17.
//  Copyright © 2017 Tushar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(navigatefun), name: NSNotification.Name(rawValue: "navigate"), object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onMoreToggle(_ sender: Any)
    {
      NotificationCenter.default.post(name: NSNotification.Name("Toggle"), object: nil)
        
    }

    @objc func navigatefun()
    {
        NotificationCenter.default.post(name: NSNotification.Name("Toggle"), object: nil)
        self.performSegue(withIdentifier: "testID", sender: self)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
