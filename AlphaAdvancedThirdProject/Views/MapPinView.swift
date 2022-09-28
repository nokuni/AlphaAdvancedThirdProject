//
//  MapPinView.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import SwiftUI

struct MapPinView: View {
    var place: Place
    init(_ place: Place) {
        self.place = place
    }
    var body: some View {
        VStack {
            Text(place.name)
                .fontWeight(.bold)
                .font(.caption2)
                .foregroundColor(.red)
            Image(systemName: "mappin")
                .foregroundColor(.red)
        }
    }
}

struct MapPinView_Previews: PreviewProvider {
    static var previews: some View {
        MapPinView(Place.all[0])
    }
}
