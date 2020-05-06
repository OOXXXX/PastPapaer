//
//  OLBio15List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio15ListView: View {

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
                OBio15List()
            }
            if selected == 2{
                OBio15List2()
            }
            
        }
       .navigationBarTitle(Text("2015"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OBio15List: View {
    var body: some View {
        List(OBio15Data) { xxx in
            
            NavigationLink(destination: OBio15Detail(xxx: xxx)) {
                OBio15Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio15List2: View {
    var body: some View {
        List(OBio15Data2) { xxx2 in
            
            NavigationLink(destination: OBio15Detail2(xxx2: xxx2)) {
                OBio15Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio15Row: View {
    var xxx: OBio15

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio15Row2: View {
    var xxx2: OBio15_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio15Detail: View {
    var xxx: OBio15

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio15Detail2: View {
    var xxx2: OBio15_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
