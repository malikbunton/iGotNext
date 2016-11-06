//
//  ChooseGameView.swift
//  GotNext
//
//  Created by Malik Bunton on 11/6/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class ChooseGameView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var navBar: UINavigationBar!

    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var openTimeLabel: UILabel!
    @IBOutlet var closeTimeLabel: UILabel!
    @IBOutlet var numPlayersLabel: UILabel!
    
    @IBOutlet var backButton: UIBarButtonItem!
    @IBOutlet var joinButton: UIBarButtonItem!
    
    @IBOutlet var playerTable: UITableView!
    
    var game: Game!
    
    override func viewWillAppear(_ animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PlayerCell", bundle: nil)
        playerTable.register(nib, forCellReuseIdentifier: playerCellId)
        addressLabel.text = "Archer Hall - Morehohuse College"
        openTimeLabel.text = "9:00AM"
        closeTimeLabel.text = "5:00PM"
        numPlayersLabel.text = "\(playerData.count)"
        
        playerTable.delegate = self
        playerTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
// Table Functions
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.playerTable.deselectRow(at: indexPath, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.playerTable.dequeueReusableCell(withIdentifier: playerCellId) as! PlayerViewTableViewCell
        let playerObject = playerData[indexPath.row]
        if let name = playerObject.name {
            cell.nameLabel.text = name
        }
        if let age = playerObject.age {
            cell.ageLabel.text = "Age: \(age)"
        }
        if let experience = playerObject.experience {
            cell.experienceLabel.text = "Experience: \(experience)"
        }
        if let image = playerObject.picture {
            cell.imageView?.image = image
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerData.count
    }

    
    @IBAction func joinGame(_ sender: AnyObject) {
        //sharedPlayer.joinGame(game: self.game)
        //slide to in gameview controller
        
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
