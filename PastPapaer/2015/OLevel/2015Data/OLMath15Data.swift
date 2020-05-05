//
//  OLMath15Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OMath15_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OMath15Data: [OMath15] = load("2015.json")
let OMath15Data2: [OMath15_2] = load("2015-2.json")
