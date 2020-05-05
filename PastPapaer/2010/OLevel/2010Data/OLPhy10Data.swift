//
//  OLPhy10Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy10: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy10_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy10Data: [OPhy10] = load("2010.json")
let OPhy10Data2: [OPhy10_2] = load("2010-2.json")
