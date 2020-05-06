//
//  OLGeo17List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo17ListView: View {

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
                OGeo17List()
            }
            if selected == 2{
                OGeo17List2()
            }
            
        }
       .navigationBarTitle(Text("2017"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo17List: View {
    var body: some View {
        List(OGeo17Data) { xxx in
            
            NavigationLink(destination: OGeo17Detail(xxx: xxx)) {
                OGeo17Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo17List2: View {
    var body: some View {
        List(OGeo17Data2) { xxx2 in
            
            NavigationLink(destination: OGeo17Detail2(xxx2: xxx2)) {
                OGeo17Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo17Row: View {
    var xxx: OGeo17

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo17Row2: View {
    var xxx2: OGeo17_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo17Detail: View {
    var xxx: OGeo17

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo17Detail2: View {
    var xxx2: OGeo17_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
