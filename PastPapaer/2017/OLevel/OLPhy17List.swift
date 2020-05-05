//
//  OLPhy17List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy17ListView: View {

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
                OPhy17List()
            }
            if selected == 2{
                OPhy17List2()
            }
            
        }
       .navigationBarTitle(Text("2017"))
    }
    
  }
}


struct OPhy17List: View {
    var body: some View {
        List(OPhy17Data) { xxx in
            
            NavigationLink(destination: OPhy17Detail(xxx: xxx)) {
                OPhy17Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy17List2: View {
    var body: some View {
        List(OPhy17Data2) { xxx2 in
            
            NavigationLink(destination: OPhy17Detail2(xxx2: xxx2)) {
                OPhy17Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy17Row: View {
    var xxx: OPhy17

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy17Row2: View {
    var xxx2: OPhy17_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy17Detail: View {
    var xxx: OPhy17

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy17Detail2: View {
    var xxx2: OPhy17_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
