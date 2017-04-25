//
//  ViewController.swift
//  Calculator
//
//  Created by Cyan Villarin on 4/22/17.
//  Copyright © 2017 Cyan Villarin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var operation = 0
    var prevEqVal = ""
    /** 
        0: N/A
        1: +
        2: -
        3: *
        4: /
    **/
    
    @IBOutlet weak var previewEq: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func but1(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "1"
        textField.text = newVal
        operation = 0
    }
   
    @IBAction func but2(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "2"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but3(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "3"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but4(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "4"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but5(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "5"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but6(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "6"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but7(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "7"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but8(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "8"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but9(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "9"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func but0(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "0"
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func butDot(_ sender: Any) {
        if (operation != 0){
            textField.text = ""
        }
        let c = textField.text
        let newVal = c! + "."
        textField.text = newVal
        operation = 0
    }
    
    @IBAction func butAdd(_ sender: Any) {
        let c = textField.text
        if (prevEqVal != ""){
            prevEqVal = prevEqVal + " + " + c!
        }
        else{
            prevEqVal = c!
        }
        previewEq.text = prevEqVal
        operation = 1
    }
    
    @IBAction func butSub(_ sender: Any) {
        let c = textField.text
        if (prevEqVal != ""){
            prevEqVal = prevEqVal + " - " + c!
        }
        else{
            prevEqVal = c!
        }
        previewEq.text = prevEqVal
        operation = 2
    }
    
    @IBAction func butMult(_ sender: Any) {
        let c = textField.text
        if (prevEqVal != ""){
            prevEqVal = prevEqVal + " * " + c!
        }
        else{
            prevEqVal = c!
        }
        previewEq.text = prevEqVal
        operation = 3
    }
    
    @IBAction func butDiv(_ sender: Any) {
        let c = textField.text
        if (prevEqVal != ""){
            prevEqVal = prevEqVal + " / " + c!
        }
        else{
            prevEqVal = c!
        }
        previewEq.text = prevEqVal
        operation = 4
    }
    
    @IBAction func butEqual(_ sender: Any) {
        let expn = NSExpression(format: prevEqVal)
        let res = expn.expressionValue(with: nil, context: nil)!
        textField.text = String(describing: res)
    }
    
    
    @IBAction func butNegate(_ sender: Any) {
        var c = Float(textField.text!)
        let val1 = c!.truncatingRemainder(dividingBy: 1.0)
        if (val1 == 0){
            var i = Int(textField.text!)
            i = i! * -1
            textField.text = String(i!)
        }
        else{
            c = c! * -1
            textField.text = String(c!)
        }
        
    }
    
    @IBAction func butDelete(_ sender: Any) {
        var c = textField.text
        c = String(c!.characters.dropLast())
        textField.text = c
    }
    
    @IBAction func butReset(_ sender: Any) {
        textField.text = ""
        previewEq.text = "Preview Equation"
        operation = 0
        prevEqVal = ""
    }
}

















