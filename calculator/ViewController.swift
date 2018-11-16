//
//  ViewController.swift
//  calculator
//
//  Created by 杨扬 on 2018/9/20.
//  Copyright © 2018年 杨扬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp1:Double = 0
    var temp2:Double = 0
    var sym = 0
    var sym1 = 0
    var sum1:Double = 0
    var judge:Double = 0
    var judge1 = 0
    var verify: Bool = false
    var minus1:Double = 0
    var decimalPointFlag: Bool = false
    var decimalPointFlag1: Bool = false
    
    
    @IBOutlet weak var rulst: UITextField!
   // @IBOutlet weak var symbol: UITextField!
    @IBOutlet weak var rulst1: UITextField!
   // @IBOutlet weak var rulst3: UITextField!
    
    @IBAction func number1(_ sender: Any){
        
            //rulst.text = rulst.text! + "1"
            //decimalPointFlag1 = true
        /*if rulst.text = "0"{
            rulst.text = ""
            
        }*/
        rulst.text = rulst.text! + "1"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number2(_ sender: Any){
    
        rulst.text = rulst.text! + "2"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }

    @IBAction func number3(_ sender: Any)
    {
       
            rulst.text = rulst.text! + "3"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number4(_ sender: Any){
        
            rulst.text = rulst.text! + "4"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number5(_ sender: Any){
    
    rulst.text = rulst.text! + "5"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number6(_ sender: Any)
    {
       
            rulst.text = rulst.text! + "6"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number7(_ sender: Any){
       
            rulst.text = rulst.text! + "7"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number8(_ sender: Any){
        
            rulst.text = rulst.text! + "8"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
        
    }
    @IBAction func number9(_ sender: Any){
        
            rulst.text = rulst.text! + "9"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    @IBAction func number0(_ sender: Any){
        
            rulst.text = rulst.text! + "0"
        if verify
        {
            temp2 = NSString(string: rulst.text!).doubleValue
        }
        else
        {
            temp1 = NSString(string: rulst.text!).doubleValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //rulst.text = "0"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(_ sender: Any){
        sym = -1
        //rulst.text = "+"
        //temp1 = Double(rulst.text!)!
        rulst.text = rulst.text! + "+"
        verify = true
        if sum1 != 0 {
            judge = -1
        }
        if judge == -1 {
            sum1 = temp1 + temp2
            temp1 = sum1
            temp2 = 0
            
        }
        
        
        
        //rulst1.text = sum1.description//"\(sum1)"
        
        //sum1 = temp1 + temp2
        //temp1 = sum1
        rulst.text = ""
        //sum1 = temp1 + temp2
        //decimalPointFlag = !decimalPointFlag
        //while verify {
        //    sym1 = 1
       // }
        //rulst1.text = temp1.description//"\(sum1)"
        //print(sym1)
        
    }
    @IBAction func less(_ sender: Any){
        sym = -2
        rulst.text = rulst.text! + "-"
        //sum1  = temp1 + temp2
         //decimalPointFlag = !decimalPointFlag
      
        
        verify = true
        if sum1 != 0 {
            judge = -1
        }
        if judge == -1 {
            sum1 = temp1 - temp2
            temp1 = sum1
            temp2 = 0
            
        }
        rulst.text = ""
       
    }
    @IBAction func multiply(_ sender: Any){
        sym = -3
         rulst.text = rulst.text! + "×"
        //sum1  = temp1 * temp2
       // decimalPointFlag = !decimalPointFlag
        
        
        verify = true
        sum1 = temp1 * temp2
        if sum1 != 0 {
            judge = -1
        }
        if judge == -1 {
            
            temp1 = sum1
            temp2 = 0
            //rulst1.text = temp1.description
            
        }
        rulst.text = ""
        
    }
    @IBAction func except(_ sender: Any){
        sym = -4
         rulst.text = rulst.text! + "÷"
         //sum1  = temp1 / temp2
        //decimalPointFlag = !decimalPointFlag
       
        
        verify = true
        while verify {
            sum1 = temp1 / temp2
            if temp2 == 0{
                
                temp2 = 1
            }
            else {
                break
            }
        }
       
        if sum1 != 0 {
            judge = -1
            
        }
        if judge == -1 {
            if rulst.text == "0" {
                rulst1.text = "出错"
                return
            }
            
            temp1 = sum1
            temp2 = 0
            
        }
        rulst.text = ""
        
    }
    @IBAction func sum(_ sender: Any){
        //temp1 = Double(rulst.text!)!
        //temp2 = Double(rulst1.text!)!
        if sym == -1{
            
             sum1 = temp1 + temp2
        }
        if sym == -2 {
            sum1  = temp1 - temp2
        }
        if sym == -3 {
            sum1  = temp1 * temp2
        }
        if sym == -4 {
            sum1  = temp1 / temp2
        }
        if sym == -5 {
            sum1  = pow(temp1 , temp2)
        }
        if sym == -6 {
            sum1  = sqrt(temp1)
        }
        //rulst3.text = "\(sum1)"*/
        
        rulst1.text = sum1.description//"\(sum1)"
        verify = false
        sym = 0
    }
    @IBAction func Clear(_ sender: Any) {
        rulst.text = ""
        rulst1.text = ""
        //symbol.text = ""
        //rulst3.text = ""
        temp1 = 0
        temp2 = 0
        //judge = 0
        sym = 0
        judge1 = 0
        sum1 = 0
        verify = false
        decimalPointFlag = !decimalPointFlag
         //decimalPointFlag1 = !decimalPointFlag1
        
    }
    @IBAction func dot(_ sender: Any) {
        
        if verify
        {
            decimalPointFlag = false
        }
        if rulst.text!.contains(".") {
            decimalPointFlag = true
           print("字符串包含." )
        }
        if !decimalPointFlag
        {
           rulst.text = rulst.text!+"."
           decimalPointFlag = !decimalPointFlag
        }
        
    }
    
    @IBAction func square(_ sender: Any) {
        sym = -5
        rulst.text = rulst.text! + "^"
        rulst.text = ""
        //sum1  = pow(temp1 , temp2)
        //decimalPointFlag = !decimalPointFlag
        verify = true
        
    }
    
    @IBAction func rooting(_ sender: Any) {
        sym = -6
        rulst.text = rulst.text! + "√"
        rulst.text = ""
        //sum1  = pow(temp1 , temp2)
        //decimalPointFlag = !decimalPointFlag
        verify = true
    }
    
    
    @IBAction func percent(_ sender: Any) {
        sym = -7
        if sym == 0{
            temp1 = temp1 * 0.01
        }else{
            temp2 = temp2 * 0.01
        }
        rulst.text = ""
        //sum1  = pow(temp1 , temp2)
        //decimalPointFlag = !decimalPointFlag
        verify = true
    }
    
    @IBAction func minus(_ sender: Any) {
        sym = -8
        minus1 = NSString(string: rulst.text!).doubleValue
        minus1 = minus1 * -1
        rulst.text = minus1.description
    }
    

}


