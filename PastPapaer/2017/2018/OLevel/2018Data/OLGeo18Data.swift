//
//  OLGeo18Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo18: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OGeo18_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OGeo18Data: [OGeo18] = load("2018.json")
let OGeo18Data2: [OGeo18_2] = load("2018-2.json")
