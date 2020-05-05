//
//  OLMath10Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath10: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OMath10_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OMath10Data: [OMath10] = load("2010.json")
let OMath10Data2: [OMath10_2] = load("2010-2.json")
