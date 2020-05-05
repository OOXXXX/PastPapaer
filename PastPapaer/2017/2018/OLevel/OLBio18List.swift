//
//  OLBio18List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio18ListView: View {

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
                OBio18List()
            }
            if selected == 2{
                OBio18List2()
            }
            
        }
       .navigationBarTitle(Text("2018"))
    }
    
  }
}


struct OBio18List: View {
    var body: some View {
        List(OBio18Data) { xxx in
            
            NavigationLink(destination: OBio18Detail(xxx: xxx)) {
                OBio18Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio18List2: View {
    var body: some View {
        List(OBio18Data2) { xxx2 in
            
            NavigationLink(destination: OBio18Detail2(xxx2: xxx2)) {
                OBio18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio18Row: View {
    var xxx: OBio18

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio18Row2: View {
    var xxx2: OBio18_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio18Detail: View {
    var xxx: OBio18

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio18Detail2: View {
    var xxx2: OBio18_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
