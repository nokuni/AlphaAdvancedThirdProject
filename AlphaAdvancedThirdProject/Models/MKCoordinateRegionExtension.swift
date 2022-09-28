//
//  MKCoordinateRegionExtension.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import MapKit

extension MKCoordinateRegion {
    static let paris = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8566,
                                       longitude: 2.3522),
        span: MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.4))
}
