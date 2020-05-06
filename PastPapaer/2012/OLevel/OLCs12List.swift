////
////  OLCs12List.swift
////  PastPapaer
////
////  Created by Rhapsody on 2020/5/5.
////  Copyright © 2020 Rhapsody. All rights reserved.
////
//
//import SwiftUI
//
//struct OCs12ListView: View {
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
//                OCs12List()
//            }
//            if selected == 2{
//                OCs12List2()
//            }
//            
//        }
//       .navigationBarTitle(Text("2012"))
//    }
//    
//  }
//}
//
//
//struct OCs12List: View {
//    var body: some View {
//        List(OCs12Data) { xxx in
//            
//            NavigationLink(destination: OCs12Detail(xxx: xxx)) {
//                OCs12Row(xxx: xxx)
//            }
//        }
//        
//    }
//}
//
//struct OCs12List2: View {
//    var body: some View {
//        List(OCs12Data2) { xxx2 in
//            
//            NavigationLink(destination: OCs12Detail2(xxx2: xxx2)) {
//                OCs12Row2(xxx2: xxx2)
//            }
//        }
//        
//    }
//}
//
//
//struct OCs12Row: View {
//    var xxx: OCs12
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
//struct OCs12Row2: View {
//    var xxx2: OCs12_2
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
//struct OCs12Detail: View {
//    var xxx: OCs12
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx.url))
//        }
//        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
//    }
//}
//
//struct OCs12Detail2: View {
//    var xxx2: OCs12_2
//
//    var body: some View {
//        VStack {
//            Webview(url: (xxx2.url))
//        }
//        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
//    }
//}
