//
//  ViewController.swift
//  Swifty Stepprr
//
//  Created by Zac Wolff on 8/22/15.
//  Copyright (c) 2015 Zac Wolff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tapToEditLabel: UILabel!

    var tempStepperValue = 0
    var value = 0
    {
        didSet
        {
            amountTextField.text = String(value)
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //you can do this in storyboard too
        amountTextField.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func minusButton(sender: AnyObject)
    {
        amountTextField.resignFirstResponder()
        if tempStepperValue != 0 {
            value -= tempStepperValue
            tempStepperValue = 0
        } else {
            value -= 1
        }
    }
    
    @IBAction func plusButton(sender: AnyObject)
    {
        amountTextField.resignFirstResponder()
        if tempStepperValue != 0 {
            value += tempStepperValue
            tempStepperValue = 0
        } else {
            value += 1
        }
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        amountTextField.text = ""
        tapToEditLabel.hidden = true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        tempStepperValue = amountTextField.text.toInt() ?? 0
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        view.endEditing(true)
    }
    

}