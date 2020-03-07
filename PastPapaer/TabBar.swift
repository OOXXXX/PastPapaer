//
//  TabBar.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//
import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
           
            SamplePaperView().tabItem {
               Image(systemName: "list.dash")
               Text("Paper")
                      }
           
//            LandmarkList().tabItem {
//                Image(systemName: "list.dash")
//                Text("Paper")
//            }
          
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPhone 11 Pro")
        }
    }
}


