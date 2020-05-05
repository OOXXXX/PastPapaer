//
//  OLGeo15Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OGeo15_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OGeo15Data: [OGeo15] = load("2015.json")
let OGeo15Data2: [OGeo15_2] = load("2015-2.json")
