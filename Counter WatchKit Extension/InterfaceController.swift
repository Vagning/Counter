//
//  InterfaceController.swift
//  Counter WatchKit Extension
//
//  Created by Thomas Vagning on 12/06/15.
//  Copyright © 2015 Thomas Vagning. All rights reserved.
//

import WatchKit
import Foundation



class InterfaceController: WKInterfaceController {
    
    var countNumber: Int = 0
    var tick: Int = 1
    var counterOne: Int = 0
    var counterTwo: Int = 0
    var counterThree: Int = 0
    var counterN: Int = 1
    var wCount: Int!
    
    @IBOutlet var count: WKInterfaceLabel!
    @IBOutlet var minus: WKInterfaceButton!
    @IBOutlet var plus: WKInterfaceButton!
    @IBOutlet var one: WKInterfaceButton!
    @IBOutlet var ten: WKInterfaceButton!
    @IBOutlet var hundred: WKInterfaceButton!
    @IBOutlet var C1: WKInterfaceButton!
    @IBOutlet var C2: WKInterfaceButton!
    @IBOutlet var C3: WKInterfaceButton!

    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        wCount = counterOne
        // Configure interface objects here
        count.setText("\(wCount)")
        C1.setBackgroundColor(UIColor(red:0.31, green:0.89, blue:0.76, alpha:1))
        C2.setBackgroundColor(UIColor(red:0.29, green:0.56, blue:0.89, alpha:1))
        C3.setBackgroundColor(UIColor(red:0.56, green:0.07, blue:1, alpha:1))
        count.setTextColor(UIColor(red:0.31, green:0.89, blue:0.76, alpha:1))
        minus.setBackgroundColor(UIColor(red:0.75, green:0.03, blue:0.07, alpha:1))
        plus.setBackgroundColor(UIColor(red:0.32, green:0.75, blue:0.36, alpha:1))
        one.setBackgroundColor(UIColor(red:0.04, green:0.28, blue:0.57, alpha:1))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func reset() {
        wCount = 0
        count.setText("\(wCount)")
    }
    
    @IBAction func tick1() {
        tick = 1
        one.setBackgroundColor(UIColor(red:0.04, green:0.28, blue:0.57, alpha:1))
        ten.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
        hundred.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
    }
    
    @IBAction func tick10() {
        tick = 10
        one.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
        ten.setBackgroundColor(UIColor(red:0.04, green:0.28, blue:0.57, alpha:1))
        hundred.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
    }
    
    @IBAction func tick100() {
        tick = 100
        one.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
        ten.setBackgroundColor(UIColor(red:0.13, green:0.13, blue:0.14, alpha:1))
        hundred.setBackgroundColor(UIColor(red:0.04, green:0.28, blue:0.57, alpha:1))
    }
    
    @IBAction func cOne() {
        //counterN = 1
        wCount = counterOne
        count.setTextColor(UIColor(red:0.31, green:0.89, blue:0.76, alpha:1))
        count.setText("\(wCount)")
    }
    
    @IBAction func cTwo() {
        //counterN = 2
        wCount = counterTwo
        count.setTextColor(UIColor(red:0.29, green:0.56, blue:0.89, alpha:1))
        count.setText("\(wCount)")
    }
    
    @IBAction func cThree() {
        //counterN = 3
        wCount = counterThree
        count.setTextColor(UIColor(red:0.56, green:0.07, blue:1, alpha:1))
        count.setText("\(wCount)")

    }
    

    
    @IBAction func minusA() {
        if (wCount - tick >= 0) {
            wCount = wCount - tick
            count.setText("\(wCount)")
        }
    }
    
    //Continius tap
    //var timer: NSTimer? = nil
    
    @IBAction func plusA() {
        wCount = wCount + tick
        count.setText("\(wCount)")
        //Continius tap
        /*if(self.timer != nil){
            self.timer = NSTimer .scheduledTimerWithTimeInterval(0.25, target: self, selector: "plusA", userInfo: nil, repeats: true)
        }
        if(){
        }*/
    }
    

}
