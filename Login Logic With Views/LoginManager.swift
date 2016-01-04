//
//  LoginManager.swift
//  Login Logic With Views
//
//  Created by mitchell hudson on 1/4/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import Foundation
import UIKit

class LoginManager {
    var isLoggedIn = false
    var username = ""
    var password = ""
    
    static let sharedInstance = LoginManager()
    
    func loginWithUserName(username: String, and password: String) -> Bool {
        if username != "" && password != "" {
            self.username = username
            self.password = password
            self.isLoggedIn = true
            return true
        } else {
            print("Login failed")
            return false
        }
    }
    
}

