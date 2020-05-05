//
//  OLCs15Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OCs15_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OCs15Data: [OCs15] = load("2015.json")
let OCs15Data2: [OCs15_2] = load("2015-2.json")
