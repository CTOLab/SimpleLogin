//
//  TextFieldCheck.swift
//  SimpleLogin
//
//  Created by Michael Fussenegger on 12.01.15.
//  Copyright (c) 2015 Michael Fussenegger. All rights reserved.
//

import UIKit

var checkTextField : TextFieldCheck = TextFieldCheck()

class TextFieldCheck: NSObject {
    
    var error = ""
    
    func checkUsernameTextentry(Username: String) ->Bool
    {
        println(Username)
        
        
        if Username.isEmpty
        {
            error="Please enter a Username"
            return false
        }
        else if countElements(Username) < 3
        {
           
            error="Please check your Username. It should have more then 2characters."
            return false
        }
        else if Username.rangeOfCharacterFromSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) != nil
        {
            error="Please check your Username. Spaces are not allowed."
            return false
        }
        //add other checks if required
        else
        {
            return true
        }
    }
    
    func checkPwdTextentry(Pwd: String) ->Bool
    {
        println(Pwd)
    
        
        if Pwd.isEmpty
        {
            error="Please enter a password"
            return false
        }
        else if countElements(Pwd) < 7
        {
            
            error="Please check your password. It must have more then 6 characters."
            return false
        }
        else if (Pwd.rangeOfCharacterFromSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())) != nil
        {
            error="Please check your password. Spaces are not allowed."
            return false
        }
            //add other checks if required
        else
        {
            return true
        }
    }
    
    
    
    func errorMsg() ->String
    {
        return error
    }

}
