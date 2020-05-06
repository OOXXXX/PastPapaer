//
//  OLGeo11List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo11ListView: View {

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
                OGeo11List()
            }
            if selected == 2{
                OGeo11List2()
            }
            
        }
       .navigationBarTitle(Text("2011"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo11List: View {
    var body: some View {
        List(OGeo11Data) { xxx in
            
            NavigationLink(destination: OGeo11Detail(xxx: xxx)) {
                OGeo11Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo11List2: View {
    var body: some View {
        List(OGeo11Data2) { xxx2 in
            
            NavigationLink(destination: OGeo11Detail2(xxx2: xxx2)) {
                OGeo11Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo11Row: View {
    var xxx: OGeo11

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo11Row2: View {
    var xxx2: OGeo11_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo11Detail: View {
    var xxx: OGeo11

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo11Detail2: View {
    var xxx2: OGeo11_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
