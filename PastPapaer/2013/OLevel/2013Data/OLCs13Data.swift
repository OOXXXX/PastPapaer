//
//  OLCs13Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs13: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OCs13_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OCs13Data: [OCs13] = load("2013.json")
let OCs13Data2: [OCs13_2] = load("2013-2.json")
