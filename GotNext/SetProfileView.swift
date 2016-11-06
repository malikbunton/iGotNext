//
//  SetProfileView.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class SetProfileView: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var playerNameField: UITextField!
    @IBOutlet var genderField: UITextField!
    @IBOutlet var ageField: UITextField!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var yearsField: UITextField!
    
    @IBOutlet var updateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func userUpdate(_ sender: AnyObject) {
        sharedPlayer.name = self.playerNameField.text!
        sharedPlayer.age = Int(self.ageField.text!)
        sharedPlayer.height = self.heightField.text!
        sharedPlayer.experience = Int(self.ageField.text!)
        
        self.performSegue(withIdentifier: segueSetUpToHome, sender: self)
        print(sharedPlayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
