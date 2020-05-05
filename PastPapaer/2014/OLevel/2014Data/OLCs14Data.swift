//
//  OLCs14Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs14: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OCs14_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OCs14Data: [OCs14] = load("2014.json")
let OCs14Data2: [OCs14_2] = load("2014-2.json")
