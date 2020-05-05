//
//  OLBio11List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio11ListView: View {

@State var selected = 1

var body: some View {
    
  
    NavigationView {
        VStack{
            Picker(selection: $selected, label: Text("")){
                   Text("May-Jun").tag(1)
                   Text("Oct-Nov").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: screen.width-24)
            
            if selected == 1{
                OBio11List()
            }
            if selected == 2{
                OBio11List2()
            }
            
        }
       .navigationBarTitle(Text("2011"))
    }
    
  }
}


struct OBio11List: View {
    var body: some View {
        List(OBio11Data) { xxx in
            
            NavigationLink(destination: OBio11Detail(xxx: xxx)) {
                OBio11Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio11List2: View {
    var body: some View {
        List(OBio11Data2) { xxx2 in
            
            NavigationLink(destination: OBio11Detail2(xxx2: xxx2)) {
                OBio11Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio11Row: View {
    var xxx: OBio11

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio11Row2: View {
    var xxx2: OBio11_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio11Detail: View {
    var xxx: OBio11

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio11Detail2: View {
    var xxx2: OBio11_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

