//
//  AppDemoViewController.swift
//  SimpleLogin
//
//  Created by Michael Fussenegger on 08.01.15.
//  Copyright (c) 2015 Michael Fussenegger. All rights reserved.
//

import UIKit

class AppDemoViewController: UIViewController {

    @IBOutlet weak var labelUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   /* override func viewDidAppear(animated: Bool) {
        println("Oja")
            self.performSegueWithIdentifier("showLogin", sender: self)
        
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logoutTapped(sender: UIButton) {
    // TODO: Logout process
        println("Tapped Logout1")
        self.performSegueWithIdentifier("showLogin", sender: self)
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
