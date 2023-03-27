//
//  HomePresenter.swift
//  maps-digital
//
//  Created by André  Lucas on 26/03/23.
//

import Foundation
import MapKit
import CoreLocation

class HomePresenter: ObservableObject {
    
    @Published var text: String = ""
    
    @Published var showDetails = false
    
    @Published private var locationManager = CLLocationManager()
    @Published var userLocation = CLLocationCoordinate2D()
    
    @Published var locations: [Location] = [
        Location(name: "Praia Grande", coordinate: CLLocationCoordinate2D(latitude: -0.762941, longitude: -48.512481)),
        Location(name: "Eclipse", coordinate: CLLocationCoordinate2D(latitude: -0.7519923, longitude: -48.5259864)),
        Location(name: "Praça",coordinate: CLLocationCoordinate2D(latitude: -0.7524219, longitude: -48.5134487)),
    ]
    
    func getLocation() -> Void {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        if let location = locationManager.location?.coordinate{
            userLocation = location
        }
    }

}
