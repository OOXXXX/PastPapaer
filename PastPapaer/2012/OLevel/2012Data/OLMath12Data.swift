//
//  OLMath12Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath12: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OMath12_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OMath12Data: [OMath12] = load("2012.json")
let OMath12Data2: [OMath12_2] = load("2012-2.json")
