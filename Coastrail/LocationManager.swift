//
//  LocationManager.swift
//  CoasTrail
//
//  Created by Attilio Di Vicino on 28/10/2020.
//

import Foundation
import MapKit

class LocationManager: NSObject {
   
    static let shared = LocationManager()
    
    private override init() {
        super.init()
        setupManager()
        
    }
   
    var locationManager = CLLocationManager()
      func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
      }
}
