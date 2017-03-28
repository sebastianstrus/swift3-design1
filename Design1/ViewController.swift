//
//  ViewController.swift
//  SwipeApp
//
//  Created by Sebastian Strus on 2017-03-25.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.borderWidth = 1
        imageView.layer.cornerRadius = 10
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 10
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openMenu(_ sender: Any) {
        
        if menuShowing {
            leadingConstraint.constant = -160
        }
        else {
            leadingConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        
        menuShowing = !menuShowing
        
    }




}

