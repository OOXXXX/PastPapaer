//
//  OLPhy15Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy15_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy15Data: [OPhy15] = load("2015.json")
let OPhy15Data2: [OPhy15_2] = load("2015-2.json")
