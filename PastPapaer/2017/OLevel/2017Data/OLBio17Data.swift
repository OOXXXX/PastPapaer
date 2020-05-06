//
//  OLBio17Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio17: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OBio17_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OBio17Data: [OBio17] = load("OLMathD17.json")
let OBio17Data2: [OBio17_2] = load("OLMathD17-2.json")
