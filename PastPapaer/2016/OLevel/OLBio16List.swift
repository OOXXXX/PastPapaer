//
//  OLBio16List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio16ListView: View {

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
                OBio16List()
            }
            if selected == 2{
                OBio16List2()
            }
            
        }
       .navigationBarTitle(Text("2016"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OBio16List: View {
    var body: some View {
        List(OBio16Data) { xxx in
            
            NavigationLink(destination: OBio16Detail(xxx: xxx)) {
                OBio16Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio16List2: View {
    var body: some View {
        List(OBio16Data2) { xxx2 in
            
            NavigationLink(destination: OBio16Detail2(xxx2: xxx2)) {
                OBio16Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio16Row: View {
    var xxx: OBio16

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio16Row2: View {
    var xxx2: OBio16_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio16Detail: View {
    var xxx: OBio16

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio16Detail2: View {
    var xxx2: OBio16_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
