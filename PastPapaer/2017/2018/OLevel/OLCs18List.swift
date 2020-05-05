//
//  OLCs18List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs18ListView: View {

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
                OCs18List()
            }
            if selected == 2{
                OCs18List2()
            }
            
        }
       .navigationBarTitle(Text("2018"))
    }
    
  }
}


struct OCs18List: View {
    var body: some View {
        List(OCs18Data) { xxx in
            
            NavigationLink(destination: OCs18Detail(xxx: xxx)) {
                OCs18Row(xxx: xxx)
            }
        }
        
    }
}

struct OCs18List2: View {
    var body: some View {
        List(OCs18Data2) { xxx2 in
            
            NavigationLink(destination: OCs18Detail2(xxx2: xxx2)) {
                OCs18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OCs18Row: View {
    var xxx: OCs18

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OCs18Row2: View {
    var xxx2: OCs18_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OCs18Detail: View {
    var xxx: OCs18

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OCs18Detail2: View {
    var xxx2: OCs18_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

