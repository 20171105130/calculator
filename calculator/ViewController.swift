//
//  ViewController.swift
//  calculator
//
//  Created by 杨扬 on 2018/9/20.
//  Copyright © 2018年 杨扬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var sym = 0
    var sum1:Double = 0
    @IBOutlet weak var rulst: UITextField!
    @IBOutlet weak var symbol: UITextField!
    @IBOutlet weak var rulst1: UITextField!
    
    @IBAction func number1(_ sender: Any){
        rulst.text = rulst.text! + "1"
    }
    @IBAction func number2(_ sender: Any){
        rulst.text = rulst.text! + "2"
    }
    @IBAction func number3(_ sender: Any)
    {
        rulst.text = rulst.text! + "3"
    }
    @IBAction func number4(_ sender: Any){
        rulst.text = rulst.text! + "4"
    }
    @IBAction func number5(_ sender: Any){
        rulst.text = rulst.text! + "5"
    }
    @IBAction func number6(_ sender: Any)
    {
        rulst.text = rulst.text! + "6"
    }
    @IBAction func number7(_ sender: Any){
        rulst.text = rulst.text! + "7"
    }
    @IBAction func number8(_ sender: Any){
        rulst.text = rulst.text! + "8"
    }
    @IBAction func number9(_ sender: Any){
        rulst.text = rulst.text! + "9"
    }
    @IBAction func number0(_ sender: Any){
        rulst.text = rulst.text! + "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(_ sender: Any){
        
        sym = -1
    }
    @IBAction func less(_ sender: Any){
         sym = -2
    }
    @IBAction func multiply(_ sender: Any){
         sym = -3
    }
    @IBAction func except(_ sender: Any){
         sym = -4
    }
    @IBAction func sum(_ sender: Any){
        temp = Double(rulst.text!)!
        /*if sym == -1{
             sum1 = temp + Double(rulst.text!)!
        }
        if sym == -2 {
            sum1  = temp - Double(rulst.text!)!
        }
        if sym == -3 {
            sum1  = temp * Double(rulst.text!)!
        }
        if sym == -4 {
            sum1  = temp / Double(rulst.text!)!
        }*/
        rulst.text = "\(sum1)"
    }
    @IBAction func Clear(_ sender: Any) {
        rulst.text = ""
        rulst1.text = ""
        symbol.text = ""
    }
    
}


