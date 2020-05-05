//
//  OLGeo10Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo10: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OGeo10_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OGeo10Data: [OGeo10] = load("2010.json")
let OGeo10Data2: [OGeo10_2] = load("2010-2.json")
