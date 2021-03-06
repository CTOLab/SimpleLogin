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
    
    @IBAction func loginTapped() {
        
        if (checkTextField.checkUsernameTextentry(textUserName.text))
        {
            if (checkTextField.checkPwdTextentry(textPwd.text))
            {
                println("Parse Login")
                login()
               
            }
            else
            {
                println(checkTextField.errorMsg())
                allert.showError(checkTextField.errorMsg())
                
            }
        }
        else
        {
            println(checkTextField.errorMsg())
            allert.showError(checkTextField.errorMsg())
        }
        
    }

    @IBAction func registrationTapped(sender: UIButton) {
        // TODO: Registration
        println("Tapped Registration")
        self.performSegueWithIdentifier("showRegistration", sender: self)
    }
    
    func login()
    {
        PFUser.logInWithUsernameInBackground(textUserName.text, password:textPwd.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                // Do stuff after successful login.
                 allert.showMsg("Success", msg: "You are now loged in")
            } else {
                let errorString = error.description
                // Show the errorString somewhere and let the user try again.
                println(errorString)
                allert.showError(errorString)
            }
        }
    }


}
