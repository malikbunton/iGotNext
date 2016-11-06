//
//  SignUpView.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class SignUpView: UIViewController, UITextFieldDelegate{

    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var confirmPasswordField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.endEditing(true)
        // Do any additional setup after loading the view.
    }
    @IBAction func signUp(_ sender: AnyObject) {
        if let username  = usernameField.text,
            (self.confirmPasswordField.text == self.passwordField.text) {
            sharedPlayer.username = username
            sharedPlayer.password = self.passwordField.text
            self.performSegue(withIdentifier: segueSignUpToSetUp, sender: self)
        }
        else {
            print("passwords done match or username is nil")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField:UITextField)-> Bool{
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        confirmPasswordField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
