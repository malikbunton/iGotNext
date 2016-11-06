//
//  SetProfileView.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class SetProfileView: UIViewController, UITextFieldDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var playerNameField: UITextField!
    @IBOutlet var genderField: UITextField!
    @IBOutlet var ageField: UITextField!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var yearsField: UITextField!
    
    @IBOutlet var updateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.endEditing(true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userUpdate(_ sender: AnyObject) {
        sharedPlayer.name = self.playerNameField.text!
        sharedPlayer.age = Int(self.ageField.text!)
        sharedPlayer.height = self.heightField.text!
        sharedPlayer.experience = Int(self.ageField.text!)
        
        self.performSegue(withIdentifier: segueSetUpToHome, sender: self)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField:UITextField)-> Bool{
        playerNameField.resignFirstResponder()
        genderField.resignFirstResponder()
        ageField.resignFirstResponder()
        heightField.resignFirstResponder()
        yearsField.resignFirstResponder()
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
