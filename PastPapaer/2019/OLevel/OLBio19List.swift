//
//  OLBio19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio19ListView: View {

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
                OBio19List()
            }
            if selected == 2{
                OBio19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
    }
    
  }
}


struct OBio19List: View {
    var body: some View {
        List(OBio19Data) { xxx in
            
            NavigationLink(destination: OBio19Detail(xxx: xxx)) {
                OBio19Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio19List2: View {
    var body: some View {
        List(OBio19Data2) { xxx2 in
            
            NavigationLink(destination: OBio19Detail2(xxx2: xxx2)) {
                OBio19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio19Row: View {
    var xxx: OBio19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio19Row2: View {
    var xxx2: OBio19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio19Detail: View {
    var xxx: OBio19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio19Detail2: View {
    var xxx2: OBio19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
