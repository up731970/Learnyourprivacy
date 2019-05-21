//
//  SocialMedia.swift
//  Learn your Privacy
//
//  Created by George on 09/02/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import UIKit
var importText = String()

class SocialMedia: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func facebookTapped(_ sender: UIButton) {
        importText = "facebook"
    }
    
    @IBAction func instagramTapped(_ sender: UIButton) {
        importText = "instagram"
    }
    
    @IBAction func snapchatTapped(_ sender: UIButton) {
        importText = "snapchat"
    }
}
