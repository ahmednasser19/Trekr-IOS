//
//  Location.swift
//  Trekr
//
//  Created by Ahmed Nasser on 20/01/2023.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1 ,name: "New York ", country: "United States", description: "Beatifull",
                                  more: "More Text here" , latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Berwa of the beats")
}
