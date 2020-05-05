//
//  OLBio10List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio10ListView: View {

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
                OBio10List()
            }
            if selected == 2{
                OBio10List2()
            }
            
        }
       .navigationBarTitle(Text("2010"))
    }
    
  }
}


struct OBio10List: View {
    var body: some View {
        List(OBio10Data) { xxx in
            
            NavigationLink(destination: OBio10Detail(xxx: xxx)) {
                OBio10Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio10List2: View {
    var body: some View {
        List(OBio10Data2) { xxx2 in
            
            NavigationLink(destination: OBio10Detail2(xxx2: xxx2)) {
                OBio10Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio10Row: View {
    var xxx: OBio10

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio10Row2: View {
    var xxx2: OBio10_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio10Detail: View {
    var xxx: OBio10

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio10Detail2: View {
    var xxx2: OBio10_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

