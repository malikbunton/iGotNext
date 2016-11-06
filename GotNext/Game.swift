//
//  Game.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Game: AnyObject {
    var location: CLLocationCoordinate2D!
    var isOpen: Bool?
    var players: NSArray!
    var closeTime: String!
    var openTime: String!
    var schedule: String!
    var phoneNumber: Int!
    var picture: UIImage!
    var name:String!

    init() {
    }
    
    init(location: CLLocationCoordinate2D!, isOpen: Bool!, players: NSArray!, close: String!,
         open: String!, name: String!) {
        self.location = location
        self.isOpen = isOpen
        self.players = players
        self.closeTime = close
        self.openTime = open
    }
    
}
