//
//  ViewController.swift
//  SimpleLogin
//
//  Created by Michael Fussenegger on 08.01.15.
//  Copyright (c) 2015 Michael Fussenegger. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textUserName: UITextField!
    @IBOutlet var textPwd: UITextField!
    @IBOutlet var buttonSubmit: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textUserName.delegate = self
        textPwd.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("in it")
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        if (textField === textUserName) {
            textPwd.becomeFirstResponder()
        }else if (textField === textPwd) {
            textPwd.resignFirstResponder()
        }
        return true
    }
    

    @IBAction func registrationTapped(sender: UIButton) {
        // TODO: Registration
        println("Tapped Registration")
        self.performSegueWithIdentifier("showRegistration", sender: self)
    }


}
