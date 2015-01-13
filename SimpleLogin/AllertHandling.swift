
//
//  AllertHandling.swift
//  SimpleLogin
//
//  Created by Michael Fussenegger on 13.01.15.
//  Copyright (c) 2015 Michael Fussenegger. All rights reserved.
//

import UIKit

var allert : AllertHandling = AllertHandling()

class AllertHandling: NSObject {

    var alertView:UIAlertView = UIAlertView()
    
    func showError(msg: String)
    {
        alertView.title = "Error"
        alertView.message = msg
        alertView.delegate = self
        alertView.addButtonWithTitle("OK")
        
        alertView.show()
    }
    
    func showMsg(title: String,msg: String)
    {
        alertView.title = title
        alertView.message = msg
        alertView.delegate = self
        alertView.addButtonWithTitle("OK")
        
        alertView.show()
    }


}
