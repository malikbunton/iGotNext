//
//  Player.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import Foundation

class Player {
    var name: String!
    var age: String!
    var height: String!
    var experience: Int!
    
    var location: String!
    var isReady: Bool?
    var hasBall: Bool?
    
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
    
}
