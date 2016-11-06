//
//  ChooseGameView.swift
//  GotNext
//
//  Created by Malik Bunton on 11/6/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class ChooseGameView: UIViewController, UITableViewDelegate{
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
        
        playerTable.delegate = self

        // Do any additional setup after loading the view.
    }
    
// Table Functions
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //Setup cells based on the array of players at t
    }
    
    @IBAction func joinGame(_ sender: AnyObject) {
        
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        
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
