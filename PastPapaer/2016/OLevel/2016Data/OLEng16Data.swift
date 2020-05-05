//
//  Decode6.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

 struct Land16: Hashable, Codable, Identifiable {
     var id: Int
     var name: String
     var url: String
     
 }

import SwiftUI

struct Land162: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let _16Data: [Land16] = load("2016.json")
let _16Data2: [Land162] = load("2016-2.json")
