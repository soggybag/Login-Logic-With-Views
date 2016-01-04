//
//  RegisterViewController.swift
//  Login Logic With Views
//
//  Created by mitchell hudson on 1/4/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: IBOutlets
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordConfirmedText: UITextField!
    
    
    // MARK: IBActions
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        if passwordText.text == passwordConfirmedText.text {
            if LoginManager.sharedInstance.loginWithUserName(usernameText.text!, and: passwordText.text!) {
                print("You just registered a new account, and have been logged in")
                dismissViewControllerAnimated(true, completion: nil)
            }
        }
    }
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        print("What you have an account, better login!")
        let presentingVC = self.presentingViewController
        dismissViewControllerAnimated(true) { () -> Void in
            let login = self.storyboard?.instantiateViewControllerWithIdentifier("LoginViewController")
            presentingVC?.presentViewController(login!, animated: true, completion: nil)
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
