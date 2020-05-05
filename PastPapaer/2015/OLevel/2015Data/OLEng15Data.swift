//
//  Decode5.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land152: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _15Data: [Land15] = load("2015.json")
let _15Data2: [Land152] = load("2015-2.json")
