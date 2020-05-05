//
//  OLMath15List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath15ListView: View {

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
                OMath15List()
            }
            if selected == 2{
                OMath15List2()
            }
            
        }
       .navigationBarTitle(Text("2015"))
    }
    
  }
}


struct OMath15List: View {
    var body: some View {
        List(OMath15Data) { xxx in
            
            NavigationLink(destination: OMath15Detail(xxx: xxx)) {
                OMath15Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath15List2: View {
    var body: some View {
        List(OMath15Data2) { xxx2 in
            
            NavigationLink(destination: OMath15Detail2(xxx2: xxx2)) {
                OMath15Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath15Row: View {
    var xxx: OMath15

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath15Row2: View {
    var xxx2: OMath15_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath15Detail: View {
    var xxx: OMath15

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath15Detail2: View {
    var xxx2: OMath15_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
