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
            amountTextField.text = String(value)
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func minusButton(sender: AnyObject)
    {
        value -= 1
    }
    
    @IBAction func plusButton(sender: AnyObject)
    {
        value += 1
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