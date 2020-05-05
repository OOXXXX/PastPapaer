//
//  Decode2.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land12: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land122: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _12Data: [Land12] = load("2012.json")
let _12Data2: [Land122] = load("2012-2.json")
