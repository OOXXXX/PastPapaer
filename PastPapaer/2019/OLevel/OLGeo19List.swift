//
//  OLGeo19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo19ListView: View {

@State var selected = 1

var body: some View {
    
  
    NavigationView {
        VStack{
            Picker(selection: $selected, label: Text("")){
                   Text("May-Jun").tag(1)
                   Text("Oct-Nov").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
            //.frame(width: screen.width-24)
            
            if selected == 1{
                OGeo19List()
            }
            if selected == 2{
                OGeo19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo19List: View {
    var body: some View {
        List(OGeo19Data) { xxx in
            
            NavigationLink(destination: OGeo19Detail(xxx: xxx)) {
                OGeo19Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo19List2: View {
    var body: some View {
        List(OGeo19Data2) { xxx2 in
            
            NavigationLink(destination: OGeo19Detail2(xxx2: xxx2)) {
                OGeo19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo19Row: View {
    var xxx: OGeo19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo19Row2: View {
    var xxx2: OGeo19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo19Detail: View {
    var xxx: OGeo19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo19Detail2: View {
    var xxx2: OGeo19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
