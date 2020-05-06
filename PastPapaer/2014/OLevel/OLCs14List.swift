////
////  OLCs14List.swift
////  PastPapaer
////
////  Created by Rhapsody on 2020/5/5.
////  Copyright © 2020 Rhapsody. All rights reserved.
////
//
//import SwiftUI
//
//struct OCs14ListView: View {
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
//                OCs14List()
//            }
//            if selected == 2{
//                OCs14List2()
//            }
//            
//        }
//       .navigationBarTitle(Text("2014"))
//    }
//    
//  }
//}
//
//
//struct OCs14List: View {
//    var body: some View {
//        List(OCs14Data) { xxx in
//            
//            NavigationLink(destination: OCs14Detail(xxx: xxx)) {
//                OCs14Row(xxx: xxx)
//            }
//        }
//        
//    }
//}
//
//struct OCs14List2: View {
//    var body: some View {
//        List(OCs14Data2) { xxx2 in
//            
//            NavigationLink(destination: OCs14Detail2(xxx2: xxx2)) {
//                OCs14Row2(xxx2: xxx2)
//            }
//        }
//        
//    }
//}
//
//
//struct OCs14Row: View {
//    var xxx: OCs14
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
//struct OCs14Row2: View {
//    var xxx2: OCs14_2
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
//struct OCs14Detail: View {
//    var xxx: OCs14
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx.url))
//        }
//        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
//    }
//}
//
//struct OCs14Detail2: View {
//    var xxx2: OCs14_2
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx2.url))
//        }
//        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
//    }
//}
