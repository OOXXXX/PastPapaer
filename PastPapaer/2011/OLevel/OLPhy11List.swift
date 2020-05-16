//
//  OLPhy11List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy11ListView: View {
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
                OPhy11List()
            }
            if selected == 2{
                OPhy11List2()
            }
            
        }
       .navigationBarTitle(Text("2011"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy11List: View {
    var body: some View {
        List(OPhy11Data) { xxx in
            
            NavigationLink(destination: OPhy11Detail(xxx: xxx)) {
                OPhy11Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy11List2: View {
    var body: some View {
        List(OPhy11Data2) { xxx2 in
            
            NavigationLink(destination: OPhy11Detail2(xxx2: xxx2)) {
                OPhy11Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy11Row: View {
    var xxx: OPhy11

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy11Row2: View {
    var xxx2: OPhy11_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy11Detail: View {
    var xxx: OPhy11

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy11Detail2: View {
    var xxx2: OPhy11_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
