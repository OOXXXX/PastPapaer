//
//  OLGeo10List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo10ListView: View {

@State var selected = 1

var body: some View {
    
  
    NavigationView {
        VStack{
            Picker(selection: $selected, label: Text("")){
                   Text("May-Jun").tag(1)
                   Text("Oct-Nov").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
             
            
            if selected == 1{
                OGeo10List()
            }
            if selected == 2{
                OGeo10List2()
            }
            
        }
       .navigationBarTitle(Text("2010"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo10List: View {
    var body: some View {
        List(OGeo10Data) { xxx in
            
            NavigationLink(destination: OGeo10Detail(xxx: xxx)) {
                OGeo10Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo10List2: View {
    var body: some View {
        List(OGeo10Data2) { xxx2 in
            
            NavigationLink(destination: OGeo10Detail2(xxx2: xxx2)) {
                OGeo10Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo10Row: View {
    var xxx: OGeo10

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo10Row2: View {
    var xxx2: OGeo10_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo10Detail: View {
    var xxx: OGeo10

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo10Detail2: View {
    var xxx2: OGeo10_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
