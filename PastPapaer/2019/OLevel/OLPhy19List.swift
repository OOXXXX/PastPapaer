//
//  OLPhy19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy19ListView: View {

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
                OPhy19List()
            }
            if selected == 2{
                OPhy19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy19List: View {
    var body: some View {
        List(OPhy19Data) { xxx in
            
            NavigationLink(destination: OPhy19Detail(xxx: xxx)) {
                OPhy19Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy19List2: View {
    var body: some View {
        List(OPhy19Data2) { xxx2 in
            
            NavigationLink(destination: OPhy19Detail2(xxx2: xxx2)) {
                OPhy19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy19Row: View {
    var xxx: OPhy19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy19Row2: View {
    var xxx2: OPhy19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy19Detail: View {
    var xxx: OPhy19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy19Detail2: View {
    var xxx2: OPhy19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
