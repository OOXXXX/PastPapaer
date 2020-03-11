//
//  TabBar.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            OlevelEnglishView().tabItem {
                Image(systemName: " ")
                Text(" ")
            }
//
//            CourseList().tabItem {
//               Image(systemName: "rectangle.stack.fill")
//               Text("Categories")
//                      }
//
//            ContentView().tabItem {
//                Image(systemName: "paperplane.fill")
//                Text("About")
            }
          
        }
        //.edgesIgnoringSafeArea(.top)
    }


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPhone 11 Pro")
        }
    }
}
