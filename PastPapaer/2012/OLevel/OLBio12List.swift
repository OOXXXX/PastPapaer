//
//  OLBio12List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio12ListView: View {

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
                OBio12List()
            }
            if selected == 2{
                OBio12List2()
            }
            
        }
       .navigationBarTitle(Text("2012"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OBio12List: View {
    var body: some View {
        List(OBio12Data) { xxx in
            
            NavigationLink(destination: OBio12Detail(xxx: xxx)) {
                OBio12Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio12List2: View {
    var body: some View {
        List(OBio12Data2) { xxx2 in
            
            NavigationLink(destination: OBio12Detail2(xxx2: xxx2)) {
                OBio12Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio12Row: View {
    var xxx: OBio12

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio12Row2: View {
    var xxx2: OBio12_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio12Detail: View {
    var xxx: OBio12

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio12Detail2: View {
    var xxx2: OBio12_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

