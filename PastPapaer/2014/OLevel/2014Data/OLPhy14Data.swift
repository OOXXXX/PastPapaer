//
//  OLPhy14Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy14: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy14_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy14Data: [OPhy14] = load("2014.json")
let OPhy14Data2: [OPhy14_2] = load("2014-2.json")
