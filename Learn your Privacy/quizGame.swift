//
//  quizGame.swift
//  Learn your Privacy
//
//  Created by George on 03/03/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import UIKit
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class quizGame: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet var AButton: [UIButton]!
    @IBOutlet weak var QLabel: UITextView!
    //@IBOutlet weak var QLabel: UILabel!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //making buttons with rounded corners
        btn1.layer.cornerRadius = 10.0
        btn2.layer.cornerRadius = 10.0
        btn3.layer.cornerRadius = 10.0
        btn4.layer.cornerRadius = 10.0
        
        Questions = [Question(Question: "Which social media can open your camera whenever they want?", Answers: ["Facebook","Instagram","Snapchat","Tumblr"], Answer: 0),
        Question(Question: "Which social media application shares your data to third party applications?", Answers: ["Facebook","Instagram","Snapchat","Tumblr"], Answer: 1),
        Question(Question: "Which social media application had data breach in 2012", Answers: ["Facebook","Instagram","Snapchat","Tumblr"], Answer: 2),
        Question(Question: "Which social media application is accessing your microphone?", Answers: ["Facebook","Instagram","Snapchat","Tumblr"], Answer: 3)]
        
        PickQuestion()

    }
    
    func PickQuestion(){
        btn1.backgroundColor = UIColor.orange
        btn2.backgroundColor = UIColor.orange
        btn3.backgroundColor = UIColor.orange
        btn4.backgroundColor = UIColor.orange
        if Questions.count > 0{
            QNumber = Int(arc4random() % UInt32(Questions.count))
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<AButton.count{
                AButton[i].setTitle(Questions[QNumber].Answers[i], for: UIControl.State.normal)
            }
            
            Questions.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
    }
   
    @IBAction func Btn1(_ sender: Any) {
        if AnswerNumber == 0{
            btn1.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                 self.PickQuestion()
            }
           
        } else {
            btn1.backgroundColor = UIColor.red
            if AnswerNumber == 0 {
                Btn1(AnswerNumber)
            }
            if AnswerNumber == 1 {
                Btn2(AnswerNumber)
            }
            if AnswerNumber == 2 {
                Btn3(AnswerNumber)
            }
            if AnswerNumber == 3 {
                Btn4(AnswerNumber)
            }
        }
    }
    
    @IBAction func Btn2(_ sender: Any) {
        if AnswerNumber == 1{
            btn2.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.PickQuestion()
            }
            
        } else {
            btn2.backgroundColor = UIColor.red
            if AnswerNumber == 0 {
                Btn1(AnswerNumber)
            }
            if AnswerNumber == 1 {
                Btn2(AnswerNumber)
            }
            if AnswerNumber == 2 {
                Btn3(AnswerNumber)
            }
            if AnswerNumber == 3 {
                Btn4(AnswerNumber)
            }
        }
    }
    
    @IBAction func Btn3(_ sender: Any) {
        if AnswerNumber == 2{
            btn3.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.PickQuestion()
            }
            
        } else {
            btn3.backgroundColor = UIColor.red
            if AnswerNumber == 0 {
                Btn1(AnswerNumber)
            }
            if AnswerNumber == 1 {
                Btn2(AnswerNumber)
            }
            if AnswerNumber == 2 {
                Btn3(AnswerNumber)
            }
            if AnswerNumber == 3 {
                Btn4(AnswerNumber)
            }
        }
    }
    
    @IBAction func Btn4(_ sender: Any) {
        if AnswerNumber == 3{
            btn4.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.PickQuestion()
            }
        } else {
            btn4.backgroundColor = UIColor.red
            if AnswerNumber == 0 {
                Btn1(AnswerNumber)
            }
            if AnswerNumber == 1 {
                Btn2(AnswerNumber)
            }
            if AnswerNumber == 2 {
                Btn3(AnswerNumber)
            }
            if AnswerNumber == 3 {
                Btn4(AnswerNumber)
            }
        }
    }
}
