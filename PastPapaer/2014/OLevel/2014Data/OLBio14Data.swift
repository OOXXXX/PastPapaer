//
//  OLBio14Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio14: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OBio14_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OBio14Data: [OBio14] = load("OLMathD14.json")
let OBio14Data2: [OBio14_2] = load("OLMathD14-2.json")
