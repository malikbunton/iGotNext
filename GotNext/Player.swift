//
//  Player.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import Foundation
import UIKit

let sharedPlayer = Player()

class Player {
    var username: String!
    var password: String!
    
    var name: String!
    var age: Int!
    var height: String!
    var experience: Int!
    var picture: UIImage?
    var currentGame: Game?
    
    var location: String!
    var isReady: Bool?
    var hasBall: Bool?
    var isPlaying: Bool?
    
    var sportsmanshipRates: [Int]! = []
    var sportsmanshipRating: Int!
    var skillRates: [Int]! = []
    var skillRating: Int!
    
    func getSportsmanshipRating() -> Int {
        if self.sportsmanshipRates.count > 0 {
            var sum = 0
            
            for rate in self.sportsmanshipRates {
                sum = sum + rate
            }
            
            return (sum / self.sportsmanshipRates.count)
        } else {
            return 6
        }
    }
    
    init() {
        
    }
    
    init(username: String!, password: String!, name: String!, age: Int!, height: String!, experience: Int!) {
        self.username = username
        self.password = password
        self.name = name
        self.age = age
        self.height = height
        self.experience = experience
    }
    
    func joinGame(game: Game) {
        //Database function join
    }
    
    func leaveGame(){
        //Database leave the game
    }
    
  }
