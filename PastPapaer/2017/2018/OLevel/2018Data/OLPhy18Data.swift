//
//  OLPhy18Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy18: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy18_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy18Data: [OPhy18] = load("OLPhy18.json")
let OPhy18Data2: [OPhy18_2] = load("OLPhy18-2.json")

