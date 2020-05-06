//
//  OLCs19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs19ListView: View {

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
                OCs19List()
            }
            if selected == 2{
                OCs19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OCs19List: View {
    var body: some View {
        List(OCs19Data) { xxx in
            
            NavigationLink(destination: OCs19Detail(xxx: xxx)) {
                OCs19Row(xxx: xxx)
            }
        }
        
    }
}

struct OCs19List2: View {
    var body: some View {
        List(OCs19Data2) { xxx2 in
            
            NavigationLink(destination: OCs19Detail2(xxx2: xxx2)) {
                OCs19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OCs19Row: View {
    var xxx: OCs19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OCs19Row2: View {
    var xxx2: OCs19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OCs19Detail: View {
    var xxx: OCs19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OCs19Detail2: View {
    var xxx2: OCs19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

