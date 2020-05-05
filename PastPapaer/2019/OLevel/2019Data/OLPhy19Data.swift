//
//  OLPhy19Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy19: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OPhy19_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OPhy19Data: [OPhy19] = load("2019.json")
let OPhy19Data2: [OPhy19_2] = load("2019-2.json")
