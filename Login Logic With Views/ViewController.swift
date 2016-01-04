//
//  ViewController.swift
//  Login Logic With Views
//
//  Created by mitchell hudson on 1/4/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if LoginManager.sharedInstance.isLoggedIn == false {
            print("Not logged in show the login view as a modal")
            showLogin()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func showLogin() {
        if let login = storyboard?.instantiateViewControllerWithIdentifier("LoginViewController") {
            presentViewController(login, animated: true, completion: nil)
        }
    }
    

    func showRegister() {
        if let register = storyboard?.instantiateViewControllerWithIdentifier("RegisterViewController") {
            presentViewController(register, animated: true, completion: nil)
        }
    }

}

