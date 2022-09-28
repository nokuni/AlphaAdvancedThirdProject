//
//  HomeMapView.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct HomeMapView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        NavigationView {
            MapView(places: locationManager.places, region: $locationManager.region)
                .onAppear {
                    locationManager.requestLocationAuthorization()
                }
        }
    }
}

struct HomeMapView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMapView()
    }
}
