//
//  MapView.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    var places: [Place]
    @Binding var region: MKCoordinateRegion
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: places) { place in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                NavigationLink(destination: PlaceView(place)) {
                    MapPinView(place)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(places: [], region: .constant(MKCoordinateRegion.paris))
    }
}

extension CLLocationCoordinate2D {
    static let zero = CLLocationCoordinate2D(latitude: 0, longitude: 0)
}
