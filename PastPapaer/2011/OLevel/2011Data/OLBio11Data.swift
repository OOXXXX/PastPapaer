//
//  OLBio11Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio11: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OBio11_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OBio11Data: [OBio11] = load("OLMathD11.json")
let OBio11Data2: [OBio11_2] = load("OLMathD11-2.json")
