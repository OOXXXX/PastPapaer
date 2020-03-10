/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            Webview(url: (landmark.url))
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

import SwiftUI

struct LandmarkDetail2: View {
    var landmark2: Landmark2

    var body: some View {
        VStack {
            Webview(url: (landmark2.url))
        }
        .navigationBarTitle(Text(landmark2.name), displayMode: .inline)
    }
}
















struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
