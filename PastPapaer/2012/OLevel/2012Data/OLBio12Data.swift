//
//  OLBio12Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio12: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OBio12_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OBio12Data: [OBio12] = load("OLMathD12.json")
let OBio12Data2: [OBio12_2] = load("OLMathD12-2.json")
