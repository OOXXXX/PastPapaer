//
//  OLPhy15List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy15ListView: View {

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
                OPhy15List()
            }
            if selected == 2{
                OPhy15List2()
            }
            
        }
       .navigationBarTitle(Text("2015"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy15List: View {
    var body: some View {
        List(OPhy15Data) { xxx in
            
            NavigationLink(destination: OPhy15Detail(xxx: xxx)) {
                OPhy15Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy15List2: View {
    var body: some View {
        List(OPhy15Data2) { xxx2 in
            
            NavigationLink(destination: OPhy15Detail2(xxx2: xxx2)) {
                OPhy15Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy15Row: View {
    var xxx: OPhy15

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy15Row2: View {
    var xxx2: OPhy15_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy15Detail: View {
    var xxx: OPhy15

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy15Detail2: View {
    var xxx2: OPhy15_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
