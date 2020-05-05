//
//  OLPhy13List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy13ListView: View {

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
                OPhy13List()
            }
            if selected == 2{
                OPhy13List2()
            }
            
        }
       .navigationBarTitle(Text("2013"))
    }
    
  }
}


struct OPhy13List: View {
    var body: some View {
        List(OPhy13Data) { xxx in
            
            NavigationLink(destination: OPhy13Detail(xxx: xxx)) {
                OPhy13Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy13List2: View {
    var body: some View {
        List(OPhy13Data2) { xxx2 in
            
            NavigationLink(destination: OPhy13Detail2(xxx2: xxx2)) {
                OPhy13Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy13Row: View {
    var xxx: OPhy13

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy13Row2: View {
    var xxx2: OPhy13_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy13Detail: View {
    var xxx: OPhy13

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy13Detail2: View {
    var xxx2: OPhy13_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
