//
//  Decode3.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land13: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land132: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _13Data: [Land13] = load("2013.json")
let _13Data2: [Land132] = load("2013-2.json")
