//
//  OLMath13Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath13: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OMath13_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OMath13Data: [OMath13] = load("2013.json")
let OMath13Data2: [OMath13_2] = load("2013-2.json")
