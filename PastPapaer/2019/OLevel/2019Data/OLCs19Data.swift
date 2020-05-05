//
//  OLCs19Data.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs19: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct OCs19_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let OCs19Data: [OCs19] = load("2019.json")
let OCs19Data2: [OCs19_2] = load("2019-2.json")
