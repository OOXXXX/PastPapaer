//
//  OLGeo13List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo13ListView: View {
@Environment(\.presentationMode) var presentationMode
@State var selected = 1

var body: some View {
    
  
    NavigationView {
        VStack{
            Picker(selection: $selected, label: Text("")){
                   Text("May-Jun").tag(1)
                   Text("Oct-Nov").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            
            if selected == 1{
                OGeo13List()
            }
            if selected == 2{
                OGeo13List2()
            }
            
        }
       .navigationBarTitle(Text("2013"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo13List: View {
    var body: some View {
        List(OGeo13Data) { xxx in
            
            NavigationLink(destination: OGeo13Detail(xxx: xxx)) {
                OGeo13Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo13List2: View {
    var body: some View {
        List(OGeo13Data2) { xxx2 in
            
            NavigationLink(destination: OGeo13Detail2(xxx2: xxx2)) {
                OGeo13Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo13Row: View {
    var xxx: OGeo13

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo13Row2: View {
    var xxx2: OGeo13_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo13Detail: View {
    var xxx: OGeo13

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo13Detail2: View {
    var xxx2: OGeo13_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
