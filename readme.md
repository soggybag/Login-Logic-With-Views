*Simple Login and Register Navigation Scheme

This example illustrates a system to present a login and register View Controller in an app. The system presents the login or register View Controllers as a modal. As a modal these View controller will appear on top of the current content, and are not part of the current Navigation Controller. 

All of the View Controllers are created in storyboard. The "Main App" consists of three View Controllers: Home, TableView, and Detail View, and a Navigation controller. These are all tied together with segues. The Register and Login View Controllers are also created in Storyboard, but are not tied to the other views with a segue. 

There is one other file: LoginManager, is a singleton used to organize and manage the login status of the app. This class is a simple halper that doesn't do a lot. You would probably replace this with something in your app that handles authentication. You Could also use this class as a bridge to your authentication system also. LoginManager has three properties: isLoggedIn. username, and password, and one method: loginWithuserName(:and password). The only things important here are the isLoggedIn, and logInWithUserName(). 

The isLoggedIn property is Bool that provides the logged in status. Any view can ask the LoginManager for the status by checking this property. In a more complex situation you would want to make this property read only, or more. 

The loginWithuserName(:and password) method is used to login with, you guessed it a username, and a passord! As implemented here this method checks only that username, and password are not empty. If not it saves the values in the username, and password properties (which are not used for anything), and sets the isLoggedIn property to true. The method returns a true if the login was successful, that is username and password are not empty, or a false if one or more of the values is empty. 

Any View Controller that needs to authenticated to view can check with LoginManager to get the logged in status via: isLoggedIn. If not logged in a view can present the login view controller using presentViewController(:animated, :completion). To do this we need to create an instance of the loginViewController. In this example I created the LoginViewController in storyboard. I used storyboard.instantiateViewControllerWithIdentifer(identifier) to create an instance of LoginViewController. For this to work you'll need to set the Storyboard identifier for this (and the RegisterViewController) in Storyboard! Then present this viewController with" presentViewController(:animated, :completion). 

This system is provided as an example, and is not provided as the best method. This is just one way to skin this cat, so to speak. 

