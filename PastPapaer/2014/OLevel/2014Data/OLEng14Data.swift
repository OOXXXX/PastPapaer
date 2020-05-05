//
//  Decode4.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land14: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land142: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _14Data: [Land14] = load("2014.json")
let _14Data2: [Land142] = load("2014-2.json")
