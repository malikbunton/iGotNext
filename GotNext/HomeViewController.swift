//
//  HomeViewController.swift
//  GotNext
//
//  Created by Malik Bunton on 11/5/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import CoreLocation
import MapKit
import UIKit

class GameAnnotation : NSObject, MKAnnotation {
    var coord: CLLocationCoordinate2D!
    var game: Game!
    var coordinate: CLLocationCoordinate2D {
        get {
            return coord
        }
    }
    
    func getGame() -> Game? {
        if (self.game != nil) {
            return game
        }
        else {
            return nil
        }
    }
    
    var title: String? = ""
    var subtitle: String? = ""
    
    func setCoordinate(newCoordinate: CLLocationCoordinate2D) {
        self.coord = newCoordinate
    }
}

protocol HandleMapSearch {
    func dropPinZoomIn(placemark:MKPlacemark)
}

class HomeViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    // This manages the users' position.
    var locationManager: CLLocationManager!
    // Matching items for the basketball courts and shit nam saying.
    var matchingItems:[MKMapItem] = []
    //
    var selectedPin:MKPlacemark? = nil
    
    // This generates the queries for parks and basketball courts in the area.
    func generateParks() {
        guard let mapView = mapView else { return }
        /*
        var queryItems: [String] = ["parks", "basketball courts"]
        for queryItem in queryItems {
            
        }
         */
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = "parks"
        request.region = mapView.region
        
        let search = MKLocalSearch(request: request)
        
        search.start { response, _ in
            guard let response = response else {
                return
            }
            self.matchingItems = response.mapItems
        }
    }
    
    func goToLocation(location: CLLocation) {
        let span = MKCoordinateSpanMake(0.1, 0.1)
        let region = MKCoordinateRegionMake(location.coordinate, span)
        mapView.setRegion(region, animated: false)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let span = MKCoordinateSpanMake(0.1, 0.1)
            let region = MKCoordinateRegionMake(location.coordinate, span)
            mapView.setRegion(region, animated: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self
        // set the region to display, this also sets a correct zoom level
        // set starting center location in San Francisco
        let centerLocation = CLLocation(latitude: 33.7683, longitude: -84.4008)
        goToLocation(location: centerLocation)
        
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.distanceFilter = 200
        locationManager.requestWhenInUseAuthorization()
        
        generateParks()
        //let hubbleSpaceCenter:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!)
        /*let locations = [
            ["title": "Atlanta Hawks Stadium",    "latitude": 33.756885, "longitude": -84.39211],
            ["title": "Archer Hall", "latitude": 33.7462, "longitude": -84.4138],
            ["title": "Kipps Academy", "latitude": 33.7673, "longitude": -84.4232]
        ] */
        
        for gamePin in gameSet {
            let annotation = GameAnnotation()
            annotation.game = gamePin
            annotation.title = gamePin.name
            annotation.coord = CLLocationCoordinate2D(latitude: gamePin.location.latitude, longitude: gamePin.location.longitude)
            mapView.addAnnotation(annotation)
            //annotation.coordinate =
            /*
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            mapView.addAnnotation(annotation)  */
        }
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        if let pin = view.annotation as? GameAnnotation {
            if let selectedGame = pin.game {
                var chooseGameView = ChooseGameView()
                chooseGameView.game = selectedGame
                self.present(chooseGameView, animated: true, completion: nil)
            }

        }
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

