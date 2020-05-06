//
//  OLBio15Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio15: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OBio15_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OBio15Data: [OBio15] = load("OLMathD15.json")
let OBio15Data2: [OBio15_2] = load("OLMathD15-2.json")
