//
//  OLGeo13Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo13: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OGeo13_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OGeo13Data: [OGeo13] = load("2013.json")
let OGeo13Data2: [OGeo13_2] = load("2013-2.json")
