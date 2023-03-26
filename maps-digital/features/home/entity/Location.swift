//
//  Location.swift
//  maps-digital
//
//  Created by André  Lucas on 26/03/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
