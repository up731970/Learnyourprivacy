//
//  fullCourse.swift
//  Learn your Privacy
//
//  Created by George on 13/02/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import UIKit

class fullCourse: UIViewController {
    var QNumber = Int()
    var counter : Int = 0
    var textFacebook = ["Facebook's messenger collects the length of your calls", "Facebook's messenger collects the frequency of your calls", "Facebook keeps track of your likes, relationship status and location", "Applications in Facebook application can also have access to your personal data", "Facebook can open your camera without asking you", "Facebook can turn on your microphone without asking you", "Facebook keeps track of the posts you like", "Facebook collects data from who you are friends with", "Facebook keeps track on the videos you watch on their application", "Facebook collects data from your transactions and donations within the application", "Facebook collects your credit card details you used to purchase something", "Facebook collects your billing and shipping address", "Faebook keeps track of your comments and others comments on your posts", "Facebook collects data such as your device, network, bluetooth and networks around you", "Facebook collects data such as the cookies you use", "Facebook shares your information with third party applications", "Facebook shares your current location to third party applications", "Facebook shares the websites you visit to third party applications"]
    var textInstagram = ["Instagram has access to your location", "Instagram shares your in-app activity", "Instagram collects your communications with other people", "Instagram collects data from their camera inside the app when you use it", "Instagram collects your hashtags and posts you upload on your profile", "Instagram keeps track of your searches", "Instagram keeps track of the posts you like", "Insragram collects data from who you are friends with", "Instagram keeps track on the videos you watch on their application", "Instagram collects data from your transactions and donations within the application", "Instagram collects your credit card details you used to purchase something", "Instagram collects your billing and shipping address", "Instagram keeps track of your comments and others comments on your posts", "Instagram collects data such as your device, network, bluetooth and networks around you", "Instagram collects data such as the cookies you use", "Instagram shares your information with third party applications", "Instagram shares your current location to third party applications", "Instagram shares the websites you visit to third party applications"]
    var textSnapchat = ["Snapchat collects information of your account and personal details you provide", "Snapchat collects information about filters you use", "Snapchat keeps track of the pictures you take with their camera", "Snapchat keeps track on the photos you send", "Snapchat collects the messages you send", "Snapchat keeps track of your friends", "Snapchat collects information about your device", "Snapchat collects information of the network you use", "Snapchat collects information of the external features you use like headphones and chargers", "Snapchat collects information of your photos on your phone", "Snapchat collects information of cookies you use", "Snapchat collects data coming from your microphone", "Snapchat collects information of the pages you visit"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        var yPos = 10
        for n in textFacebook {
            let label =  UILabel(frame: CGRect(x: 0, y: yPos, width: 400, height: 400))
//            let posit = textFacebook.indexOf(n)
            label.backgroundColor = UIColor.blue
            label.layer.cornerRadius = 10.0
            label.layer.masksToBounds = true
            label.center = CGPoint(x: 160, y: yPos)
            label.textAlignment = .center
            label.text = n
            self.view.addSubview(label)
            yPos = yPos+30
        }
        
        
//        @objc func handleTap(sender: UITapGestureRecognizer){
//            counter += 1
//            if counter == 1 {
//                if sender.state == .ended {
//                    textField1.alpha = 1
//                }
//            } else if counter == 2 {
//                if sender.state == .ended {
//                    textField2.alpha = 1
//                }
//            } else if counter == 3 {
//                if sender.state == .ended {
//                    textField3.alpha = 1
//                }
//            } else if counter == 4 {
//                if sender.state == .ended {
//                    textField4.alpha = 1
//                }
//            } else if counter == 5 {
//                if sender.state == .ended {
//                    textField5.alpha = 1
//                }
//            }
//
//        // Do any additional setup after loading the view.
//    }

}
}
