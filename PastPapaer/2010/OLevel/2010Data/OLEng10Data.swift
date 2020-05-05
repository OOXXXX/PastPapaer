//
//  OLEng10Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Land10: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Land102: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _10Data: [Land10] = load("2010.json")
let _10Data2: [Land102] = load("2010-2.json")
