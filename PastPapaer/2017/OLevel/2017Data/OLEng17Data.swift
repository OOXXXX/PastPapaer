//
//  Decode2.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land17: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land172: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _17Data: [Land17] = load("2017.json")
let _17Data2: [Land172] = load("2017-2.json")
