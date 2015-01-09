//
//  RegistrationViewController.swift
//  SimpleLogin
//
//  Created by Michael Fussenegger on 09.01.15.
//  Copyright (c) 2015 Michael Fussenegger. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var textUsername: UITextField!
    @IBOutlet var textPwd: UITextField!
    @IBOutlet var textConfirmPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textUsername.delegate = self
        textPwd.delegate = self
        textConfirmPwd.delegate = self
        // Do any additional setup after loading the view.
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
        if (textField === textUsername) {
            textPwd.becomeFirstResponder()
        }else if (textField === textPwd) {
            textConfirmPwd.becomeFirstResponder()
        }else if (textField === textConfirmPwd) {
            textConfirmPwd.resignFirstResponder()
        }
        return true
    }
   

    
    
    
    
    
    @IBAction func touchRegister(sender: AnyObject) {
        //TODO check textfields
        
        register()
        
        
    }
    
    
    func register() {
        var user = PFUser()
        user.username = textUsername.text
        user.password = textPwd.text
     
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                // Hooray! Let them use the app now.
            } else {
                //let errorString = error.userInfo["error"] as NSString
                // Show the errorString somewhere and let the user try again.
                println("TRegistration has failed")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
