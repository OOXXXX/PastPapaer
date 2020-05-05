//
//  OLMath14Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath14: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OMath14_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OMath14Data: [OMath14] = load("2014.json")
let OMath14Data2: [OMath14_2] = load("2014-2.json")
