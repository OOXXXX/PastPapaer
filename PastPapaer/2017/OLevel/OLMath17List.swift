//
//  OLMath17List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath17ListView: View {

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
                OMath17List()
            }
            if selected == 2{
                OMath17List2()
            }
            
        }
       .navigationBarTitle(Text("2017"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath17List: View {
    var body: some View {
        List(OMath17Data) { xxx in
            
            NavigationLink(destination: OMath17Detail(xxx: xxx)) {
                OMath17Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath17List2: View {
    var body: some View {
        List(OMath17Data2) { xxx2 in
            
            NavigationLink(destination: OMath17Detail2(xxx2: xxx2)) {
                OMath17Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath17Row: View {
    var xxx: OMath17

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath17Row2: View {
    var xxx2: OMath17_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath17Detail: View {
    var xxx: OMath17

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath17Detail2: View {
    var xxx2: OMath17_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

