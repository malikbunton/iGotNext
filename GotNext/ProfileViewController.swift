//
//  ProfileViewController.swift
//  GotNext
//
//  Created by Malik Bunton on 11/6/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var firstName: UILabel!
    @IBOutlet var userName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //static picture setting.
        
        profilePicture.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
        profilePicture.layer.cornerRadius = 20.0
        profilePicture.layer.masksToBounds = true
        profilePicture.layer.borderWidth = 5
        
        firstName.text = mainPlayer.name
        firstName.sizeToFit()
        userName.text = mainPlayer.username
        userName.sizeToFit()

        // Do any additional setup after loading the view.
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
