//
//  Coordinator.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 27/10/2020.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var control: Mapview
    
    init(_ control: Mapview) {
        self.control = control
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let coordinate = locations.first?.coordinate {
            UserDefaults.standard.set(coordinate.latitude, forKey: "latitude")
            UserDefaults.standard.set(coordinate.longitude, forKey: "longitude")
        }
    }
    
}
