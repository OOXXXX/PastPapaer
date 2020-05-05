//
//  OLGeo12Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo12: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OGeo12_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OGeo12Data: [OGeo12] = load("2012.json")
let OGeo12Data2: [OGeo12_2] = load("2012-2.json")
