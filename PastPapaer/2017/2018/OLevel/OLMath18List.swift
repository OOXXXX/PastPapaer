//
//  OLMath18List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath18ListView: View {

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
                OMath18List()
            }
            if selected == 2{
                OMath18List2()
            }
            
        }
       .navigationBarTitle(Text("2018"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath18List: View {
    var body: some View {
        List(OMath18Data) { xxx in
            
            NavigationLink(destination: OMath18Detail(xxx: xxx)) {
                OMath18Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath18List2: View {
    var body: some View {
        List(OMath18Data2) { xxx2 in
            
            NavigationLink(destination: OMath18Detail2(xxx2: xxx2)) {
                OMath18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath18Row: View {
    var xxx: OMath18

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath18Row2: View {
    var xxx2: OMath18_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath18Detail: View {
    var xxx: OMath18

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath18Detail2: View {
    var xxx2: OMath18_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

