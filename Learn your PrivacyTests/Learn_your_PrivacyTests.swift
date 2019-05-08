//
//  Learn_your_PrivacyTests.swift
//  Learn your PrivacyTests
//
//  Created by George on 27/03/2019.
//  Copyright © 2019 Rallis. All rights reserved.
//

import XCTest
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}
var Questions = [Question]()
class Learn_your_PrivacyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            func PickQuestion(){
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
            // Put the code you want to measure the time of here.
        }
    }

}
