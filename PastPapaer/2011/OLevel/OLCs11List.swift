////
////  OLCs11List.swift
////  PastPapaer
////
////  Created by Rhapsody on 2020/5/5.
////  Copyright © 2020 Rhapsody. All rights reserved.
////
//
//import SwiftUI
//
//struct OCs11ListView: View {
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
//                OCs11List()
//            }
//            if selected == 2{
//                OCs11List2()
//            }
//            
//        }
//       .navigationBarTitle(Text("2011"))
//    }
//    
//  }
//}
//
//
//struct OCs11List: View {
//    var body: some View {
//        List(OCs11Data) { xxx in
//            
//            NavigationLink(destination: OCs11Detail(xxx: xxx)) {
//                OCs11Row(xxx: xxx)
//            }
//        }
//        
//    }
//}
//
//struct OCs11List2: View {
//    var body: some View {
//        List(OCs11Data2) { xxx2 in
//            
//            NavigationLink(destination: OCs11Detail2(xxx2: xxx2)) {
//                OCs11Row2(xxx2: xxx2)
//            }
//        }
//        
//    }
//}
//
//
//struct OCs11Row: View {
//    var xxx: OCs11
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
//struct OCs11Row2: View {
//    var xxx2: OCs11_2
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
//struct OCs11Detail: View {
//    var xxx: OCs11
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx.url))
//        }
//        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
//    }
//}
//
//struct OCs11Detail2: View {
//    var xxx2: OCs11_2
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx2.url))
//        }
//        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
//    }
//}
