//
//  Locationmanager.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import CoreLocation
import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    var region: MKCoordinateRegion = MKCoordinateRegion.paris
    var places: [Place] = Place.all
    
    var manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocationAuthorization() {
        manager.requestWhenInUseAuthorization()
    }
    
    func requestLocation() {
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordinate = locations.last?.coordinate {
            print("Success getting location")
            location = coordinate
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Eror getting location", error)
    }
}
