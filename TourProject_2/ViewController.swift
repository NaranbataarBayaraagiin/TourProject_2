//
//  ViewController.swift
//  TourProject_2
//
//  Created by Naranbaatar Bayaraagiin on 10/30/15.
//  Copyright © 2015 Naranbaatar Bayaraagiin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var MenuButton: UIBarButtonItem!
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MenuButton.target = self.revealViewController()
        MenuButton.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

