//
//  OLCs10List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

//import SwiftUI
//
//struct OCs10ListView: View {
//
//@State var selected = 1
//
//var body: some View {
//    
//  
//    NavigationView {
//        VStack{
//            Picker(selection: $selected, label: Text("")){
//                   Text("May-Jun").tag(1)
//                   Text("Oct-Nov").tag(2)
//               }
//            .pickerStyle(SegmentedPickerStyle())
//            .frame(width: screen.width-24)
//            
//            if selected == 1{
//                OCs10List()
//            }
//            if selected == 2{
//                OCs10List2()
//            }
//            
//        }
//       .navigationBarTitle(Text("2010"))
//    }
//    
//  }
//}
//
//
//struct OCs10List: View {
//    var body: some View {
//        List(OCs10Data) { xxx in
//            
//            NavigationLink(destination: OCs10Detail(xxx: xxx)) {
//                OCs10Row(xxx: xxx)
//            }
//        }
//        
//    }
//}
//
//struct OCs10List2: View {
//    var body: some View {
//        List(OCs10Data2) { xxx2 in
//            
//            NavigationLink(destination: OCs10Detail2(xxx2: xxx2)) {
//                OCs10Row2(xxx2: xxx2)
//            }
//        }
//        
//    }
//}
//
//
//struct OCs10Row: View {
//    var xxx: OCs10
//
//    var body: some View {
//        HStack {
//            Text(xxx.name)
//                .frame(width: 230, height: 45, alignment: .leading)
//            Spacer()
//        }
//    }
//}
//
//struct OCs10Row2: View {
//    var xxx2: OCs10_2
//
//    var body: some View {
//        HStack {
//            Text(xxx2.name)
//                .frame(width: 230, height: 45, alignment: .leading)
//            Spacer()
//        }
//    }
//}
//
//
//struct OCs10Detail: View {
//    var xxx: OCs10
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx.url))
//        }
//        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
//    }
//}
//
//struct OCs10Detail2: View {
//    var xxx2: OCs10_2
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx2.url))
//        }
//        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
//    }
//}
//
