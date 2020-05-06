//
//  OLGeo15List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo15ListView: View {

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
                OGeo15List()
            }
            if selected == 2{
                OGeo15List2()
            }
            
        }
       .navigationBarTitle(Text("2015"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo15List: View {
    var body: some View {
        List(OGeo15Data) { xxx in
            
            NavigationLink(destination: OGeo15Detail(xxx: xxx)) {
                OGeo15Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo15List2: View {
    var body: some View {
        List(OGeo15Data2) { xxx2 in
            
            NavigationLink(destination: OGeo15Detail2(xxx2: xxx2)) {
                OGeo15Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo15Row: View {
    var xxx: OGeo15

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo15Row2: View {
    var xxx2: OGeo15_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo15Detail: View {
    var xxx: OGeo15

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo15Detail2: View {
    var xxx2: OGeo15_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
