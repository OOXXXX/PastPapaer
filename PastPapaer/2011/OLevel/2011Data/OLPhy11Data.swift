//
//  OLPhy11Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy11: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy11_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy11Data: [OPhy11] = load("2011.json")
let OPhy11Data2: [OPhy11_2] = load("2011-2.json")

