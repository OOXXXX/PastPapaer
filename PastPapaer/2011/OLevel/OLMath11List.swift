//
//  OLMath11List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath11ListView: View {

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
                OMath11List()
            }
            if selected == 2{
                OMath11List2()
            }
            
        }
       .navigationBarTitle(Text("2011"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath11List: View {
    var body: some View {
        List(OMath11Data) { xxx in
            
            NavigationLink(destination: OMath11Detail(xxx: xxx)) {
                OMath11Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath11List2: View {
    var body: some View {
        List(OMath11Data2) { xxx2 in
            
            NavigationLink(destination: OMath11Detail2(xxx2: xxx2)) {
                OMath11Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath11Row: View {
    var xxx: OMath11

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath11Row2: View {
    var xxx2: OMath11_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath11Detail: View {
    var xxx: OMath11

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath11Detail2: View {
    var xxx2: OMath11_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
