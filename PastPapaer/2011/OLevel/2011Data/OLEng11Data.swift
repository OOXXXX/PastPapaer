//
//  Decode1.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land11: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land112: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _11Data: [Land11] = load("2011.json")
let _11Data2: [Land112] = load("2011-2.json")
