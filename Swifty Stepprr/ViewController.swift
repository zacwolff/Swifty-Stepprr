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

    var value = 0
        {
        didSet
        {
            amountTextField.text = "\(value)"
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()

        amountTextField.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func minusButton(sender: AnyObject)
    {
        if value == 1
        {
            amountTextField.backgroundColor = UIColor(red:0.94, green:0.52, blue:0.5, alpha:1)
        }
        else
        {
            print("Substraction succeeded")
            value -= 1
            amountTextField.backgroundColor = UIColor(red:0.89, green:0.92, blue:0.89, alpha:1)
        }
    }
    
    @IBAction func plusButton(sender: AnyObject)
    {
        value += 1
        amountTextField.backgroundColor = UIColor(red:0.89, green:0.92, blue:0.89, alpha:1)
    }
        
    func textFieldDidEndEditing(textField: UITextField)
    {
        amountTextField.backgroundColor = UIColor(red:0.89, green:0.92, blue:0.89, alpha:1)

        value = Int(amountTextField.text!)!
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        view.endEditing(true)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if value == 0
        {
            amountTextField.backgroundColor = UIColor(red:0.94, green:0.52, blue:0.5, alpha:1)
        }
        else
        {
            amountTextField.backgroundColor = UIColor(red:0.89, green:0.92, blue:0.89, alpha:1)
        }
        
        return true
    }
   

}