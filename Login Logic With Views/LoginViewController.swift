//
//  LoginViewController.swift
//  Login Logic With Views
//
//  Created by mitchell hudson on 1/4/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    // MARK: IBOutlets
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    // MARK: IBActions
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        if LoginManager.sharedInstance.loginWithUserName(usernameText.text!, and: passwordText.text!) {
            print("Login success, hide this view and proceed")
            dismissViewControllerAnimated(true, completion: nil)
        } else {
            print("Unable to login, why not make a new account?")
        }
    }
    
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        print("Great idea make a new account!")
        // Dismiss this modal, and show the register modal when we're done.
        
        let presentingVC = self.presentingViewController
        dismissViewControllerAnimated(true) { () -> Void in
            let register = self.storyboard?.instantiateViewControllerWithIdentifier("RegisterViewController")
            presentingVC!.presentViewController(register!, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
