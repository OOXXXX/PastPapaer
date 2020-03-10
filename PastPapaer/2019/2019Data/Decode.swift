/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct Landmark2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}
