//
//  Tip.swift
//  Trekr
//
//  Created by Ahmed Nasser on 20/01/2023.
//

import Foundation

struct Tip:Decodable {
    let text: String
    let children: [Tip]?
}
