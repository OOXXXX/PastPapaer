//
//  OLMath13List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath13ListView: View {

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
                OMath13List()
            }
            if selected == 2{
                OMath13List2()
            }
            
        }
       .navigationBarTitle(Text("2013"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath13List: View {
    var body: some View {
        List(OMath13Data) { xxx in
            
            NavigationLink(destination: OMath13Detail(xxx: xxx)) {
                OMath13Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath13List2: View {
    var body: some View {
        List(OMath13Data2) { xxx2 in
            
            NavigationLink(destination: OMath13Detail2(xxx2: xxx2)) {
                OMath13Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath13Row: View {
    var xxx: OMath13

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath13Row2: View {
    var xxx2: OMath13_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath13Detail: View {
    var xxx: OMath13

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath13Detail2: View {
    var xxx2: OMath13_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
