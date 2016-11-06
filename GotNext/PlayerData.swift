//
//  PlayerData.swift
//  GotNext
//
//  Created by Malik Bunton on 11/6/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import Foundation
import UIKit
import MapKit

var lastName: [String] = []
var playerData: [Player] = [
    Player(username: "icthegodking", password: "894230", name: "Ibrahim", age: 20, height: "6'0", experience: 0),
    Player(username: "chefCurry", password: "aisiha", name: "Steph", age: 28, height: "6'3", experience: 7),
    Player(username: "Jesus ShuttlesWorth", password: "moneymakingmitch", name: "Ray Allen", age: 38, height: "6'7", experience: 20),
    Player(username: "lilBbasedGodCurse", password: "kd", name: "Lil B", age: 29, height: "5'10", experience: 1000),
    Player(username: "DrizzyDrake", password: "thankmelater", name: "Drake", age: 30, height: "6'0", experience: 6),
    Player(username: "micheleObamaGetsBuckets", password: "jujuonthebeat", name: "Michelle", age: 46, height: "5'10", experience: 12),
    Player(username: "queenB", password: "Jay", name: "Beyonce", age: 34, height: "5'5", experience: 7),
    Player(username: "serenaRackets", password: "lupita", name: "Serena", age: 33, height: "5'8", experience: 7),
    Player(username: "malik", password: "1234", name: "ChefCurryWitDaShot", age: 18, height: "6'2", experience: 11),
    Player(username: "blah", password: "bar", name: "Solange", age: 32, height: "5'8", experience: 15)
]

var playerSetOne: NSArray! = NSArray(array: [playerData[0], playerData[1], playerData[2]])
var playerSetTwo: NSArray! = NSArray(array: [playerData[3], playerData[4]])
var playerSetThree: NSArray! = NSArray(array: [playerData[5], playerData[6], playerData[7], playerData[8], playerData[9]])
var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 33.756885, longitude: -84.392111)

var gameSet: [Game] = [
    Game(location: CLLocationCoordinate2D(latitude: 33.756885, longitude: -84.392111), isOpen: true, players: playerSetOne, close: "9:00PM", open: "7:OOAM", name: "Atlanta Hawks Stadium"),
    Game(location: CLLocationCoordinate2D(latitude: 33.746250, longitude: -84.413865), isOpen: false, players: NSArray(), close: "10:00AM", open: "6:00AM", name: "Archer Hall"),
    Game(location: CLLocationCoordinate2D(latitude: 33.767309, longitude: -84.423287), isOpen: true, players: playerSetTwo, close: "12:00AM", open: "8:00AM", name: "Kipps Academy"),
    Game(location: CLLocationCoordinate2D(latitude: 33.782103, longitude: -84.392957), isOpen: true, players: playerSetThree, close: "5:00PM", open: "8:00AM", name: "John's BasketBall Court")
    
]
		
