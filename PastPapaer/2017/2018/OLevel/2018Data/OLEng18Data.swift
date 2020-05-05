//
//  Decode2.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct LandMar: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct LandMar2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _18Data: [LandMar] = load("2018.json")
let _18Data2: [LandMar2] = load("2018-2.json")
