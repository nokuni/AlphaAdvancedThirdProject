//
//  PlaceView.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import SwiftUI

struct PlaceView: View {
    var place: Place
    init(_ place: Place) {
        self.place = place
    }
    var body: some View {
        VStack {
            Text(place.name)
                .fontWeight(.semibold)
                .font(.title)
                .foregroundColor(.primary)
            Form {
                Section("Adresse") {
                    Text(place.address)
                }
                Section("Type") {
                    Text(place.type)
                }
                Section("Wifi") {
                    Text(place.wifi ? "Oui" : "Non")
                }
                
                Section("URL") {
                    if let url = URL(string: place.url) {
                        Link(place.url, destination: url)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text(place.name)
                    .navigationFontTitle
            }
        }
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(Place.all[0])
    }
}
