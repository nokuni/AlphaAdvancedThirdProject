//
//  APIModels.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import Foundation

struct Place: Codable, Identifiable {
    var id = UUID()
    let name: String
    let lat: Double
    let lon: Double
    let address: String
    let type: String
    let url: String
    let wifi: Bool
    
    enum CodingKeys: String, CodingKey {
        case name, lat, lon, address, type, url, wifi
    }
}

extension Place {
    static let all: [Place] = try! Bundle.main.decode("places.json")
}
