//
//  popUpViewController.swift
//  Learn your Privacy
//
//  Created by George on 13/02/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {

    @IBOutlet weak var backgroundBox: UIView!
    @IBOutlet weak var quickCourse: UIButton!
    @IBOutlet weak var fullCourse: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundBox.layer.cornerRadius = 10.0
        backgroundBox.layer.masksToBounds = true
        quickCourse.layer.cornerRadius = 10.0
        backgroundBox.layer.masksToBounds = true
        fullCourse.layer.cornerRadius = 10.0
        backgroundBox.layer.masksToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    
}
