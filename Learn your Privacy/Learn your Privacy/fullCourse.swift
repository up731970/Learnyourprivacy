//
//  fullCourse.swift
//  Learn your Privacy
//
//  Created by George on 13/02/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import UIKit

class fullCourse: UIViewController {
    
    @IBOutlet weak var textField1: UILabel!
    @IBOutlet weak var textField2: UILabel!
    @IBOutlet weak var textField3: UILabel!
    @IBOutlet weak var textField4: UILabel!
    @IBOutlet weak var textField5: UILabel!
    @IBOutlet weak var textField6: UILabel!
    @IBOutlet weak var textField7: UILabel!
    @IBOutlet weak var textField8: UILabel!
    @IBOutlet weak var textField9: UILabel!
    @IBOutlet weak var textField10: UILabel!
    @IBOutlet weak var textField11: UILabel!
    @IBOutlet weak var textField12: UILabel!
    @IBOutlet weak var textField13: UILabel!
    
    var QNumber = Int()
    var counter : Int = 0
    var textFacebook = ["Facebook's messenger collects the length of your calls", "Facebook's messenger collects the frequency of your calls", "Facebook keeps track of your likes, relationship status and location", "Applications in Facebook application can also have access to your personal data", "Facebook can open your camera without asking you", "Facebook can turn on your microphone without asking you", "Facebook keeps track of the posts you like", "Facebook collects data from who you are friends with", "Facebook keeps track on the videos you watch on their application", "Facebook collects data from your transactions and donations within the application", "Facebook collects your credit card details you used to purchase something", "Facebook collects your billing and shipping address", "Faebook keeps track of your comments and others comments on your posts", "Facebook collects data such as your device, network, bluetooth and networks around you", "Facebook collects data such as the cookies you use", "Facebook shares your information with third party applications", "Facebook shares your current location to third party applications", "Facebook shares the websites you visit to third party applications"]
    var textInstagram = ["Instagram has access to your location", "Instagram shares your in-app activity", "Instagram collects your communications with other people", "Instagram collects data from their camera inside the app when you use it", "Instagram collects your hashtags and posts you upload on your profile", "Instagram keeps track of your searches", "Instagram keeps track of the posts you like", "Insragram collects data from who you are friends with", "Instagram keeps track on the videos you watch on their application", "Instagram collects data from your transactions and donations within the application", "Instagram collects your credit card details you used to purchase something", "Instagram collects your billing and shipping address", "Instagram keeps track of your comments and others comments on your posts", "Instagram collects data such as your device, network, bluetooth and networks around you", "Instagram collects data such as the cookies you use", "Instagram shares your information with third party applications", "Instagram shares your current location to third party applications", "Instagram shares the websites you visit to third party applications"]
    var textSnapchat = ["Snapchat collects information of your account and personal details you provide", "Snapchat collects information about filters you use", "Snapchat keeps track of the pictures you take with their camera", "Snapchat keeps track on the photos you send", "Snapchat collects the messages you send", "Snapchat keeps track of your friends", "Snapchat collects information about your device", "Snapchat collects information of the network you use", "Snapchat collects information of the external features you use like headphones and chargers", "Snapchat collects information of your photos on your phone", "Snapchat collects information of cookies you use", "Snapchat collects data coming from your microphone", "Snapchat collects information of the pages you visit"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //making boxes with rounded corners
        textField1.layer.cornerRadius = 10.0
        textField1.layer.masksToBounds = true
        textField2.layer.cornerRadius = 10.0
        textField2.layer.masksToBounds = true
        textField3.layer.cornerRadius = 10.0
        textField3.layer.masksToBounds = true
        textField4.layer.cornerRadius = 10.0
        textField4.layer.masksToBounds = true
        textField5.layer.cornerRadius = 10.0
        textField5.layer.masksToBounds = true
        textField6.layer.cornerRadius = 10.0
        textField6.layer.masksToBounds = true
        textField7.layer.cornerRadius = 10.0
        textField7.layer.masksToBounds = true
        textField8.layer.cornerRadius = 10.0
        textField8.layer.masksToBounds = true
        textField9.layer.cornerRadius = 10.0
        textField9.layer.masksToBounds = true
        textField10.layer.cornerRadius = 10.0
        textField10.layer.masksToBounds = true
        textField11.layer.cornerRadius = 10.0
        textField11.layer.masksToBounds = true
        textField12.layer.cornerRadius = 10.0
        textField12.layer.masksToBounds = true
        textField13.layer.cornerRadius = 10.0
        textField13.layer.masksToBounds = true
        
        //recognise the taps on the screen
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tap)
        
        //making the boxes invisible
        textField1.alpha = 0
        textField2.alpha = 0
        textField3.alpha = 0
        textField4.alpha = 0
        textField5.alpha = 0
        textField6.alpha = 0
        textField7.alpha = 0
        textField8.alpha = 0
        textField9.alpha = 0
        textField10.alpha = 0
        textField11.alpha = 0
        textField12.alpha = 0
        textField13.alpha = 0
        
        //checking which social media is selected
        if importText == "facebook" {
            pickTextFacebook()
        } else if importText == "instagram" {
            pickTextInstagram()
        } else if importText == "snapchat" {
            pickTextSnapchat()
        }
    }
    
    //func that reveals each box with a tap
    @objc func handleTap(sender: UITapGestureRecognizer){
        counter += 1
        if counter == 1 {
            if sender.state == .ended {
                textField1.alpha = 1
            }
        } else if counter == 2 {
            if sender.state == .ended {
                textField2.alpha = 1
            }
        } else if counter == 3 {
            if sender.state == .ended {
                textField3.alpha = 1
            }
        } else if counter == 4 {
            if sender.state == .ended {
                textField4.alpha = 1
            }
        } else if counter == 5 {
            if sender.state == .ended {
                textField5.alpha = 1
            }
        } else if counter == 6 {
            if sender.state == .ended {
                textField6.alpha = 1
            }
        } else if counter == 7 {
            if sender.state == .ended {
                textField7.alpha = 1
            }
        } else if counter == 8 {
            if sender.state == .ended {
                textField8.alpha = 1
            }
        } else if counter == 9 {
            if sender.state == .ended {
                textField9.alpha = 1
            }
        } else if counter == 10 {
            if sender.state == .ended {
                textField10.alpha = 1
            }
        } else if counter == 11 {
            if sender.state == .ended {
                textField11.alpha = 1
            }
        } else if counter == 12 {
            if sender.state == .ended {
                textField12.alpha = 1
            }
        } else if counter == 13 {
            if sender.state == .ended {
                textField13.alpha = 1
            }
        }
    }
    
    //func to select and show information in the box
    func pickTextFacebook(){
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField1.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField2.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField3.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField4.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField5.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField6.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField7.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField8.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField9.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField10.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField11.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField12.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textFacebook.count > 0{
            QNumber = Int(arc4random() % UInt32(textFacebook.count))
            textField13.text = textFacebook[QNumber]
            
            textFacebook.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
    }
    
    func pickTextInstagram(){
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField1.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField2.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField3.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField4.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField5.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField6.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField7.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField8.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField9.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField10.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField11.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField12.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textInstagram.count > 0{
            QNumber = Int(arc4random() % UInt32(textInstagram.count))
            textField13.text = textInstagram[QNumber]
            
            textInstagram.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
    }
    
    func pickTextSnapchat(){
        
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField1.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField2.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField3.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField4.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField5.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField6.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField7.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField8.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField9.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField10.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField11.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField12.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
        if textSnapchat.count > 0{
            QNumber = Int(arc4random() % UInt32(textSnapchat.count))
            textField13.text = textSnapchat[QNumber]
            
            textSnapchat.remove(at: QNumber)
            
        }
        else {
            NSLog("Done!")
        }
    }

}
