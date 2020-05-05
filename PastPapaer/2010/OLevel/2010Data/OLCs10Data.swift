//
//  OLCs10Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs10: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OCs10_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OCs10Data: [OCs10] = load("2010.json")
let OCs10Data2: [OCs10_2] = load("2010-2.json")
