/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text(landmark.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct LandmarkRow2: View {
    var landmark2: Landmark2

    var body: some View {
        HStack {
            Text(landmark2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}
