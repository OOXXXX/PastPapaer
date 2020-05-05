//
//  OLPhy10List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy10ListView: View {

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
                OPhy10List()
            }
            if selected == 2{
                OPhy10List2()
            }
            
        }
       .navigationBarTitle(Text("2010"))
    }
    
  }
}


struct OPhy10List: View {
    var body: some View {
        List(OPhy10Data) { xxx in
            
            NavigationLink(destination: OPhy10Detail(xxx: xxx)) {
                OPhy10Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy10List2: View {
    var body: some View {
        List(OPhy10Data2) { xxx2 in
            
            NavigationLink(destination: OPhy10Detail2(xxx2: xxx2)) {
                OPhy10Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy10Row: View {
    var xxx: OPhy10

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy10Row2: View {
    var xxx2: OPhy10_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy10Detail: View {
    var xxx: OPhy10

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy10Detail2: View {
    var xxx2: OPhy10_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
