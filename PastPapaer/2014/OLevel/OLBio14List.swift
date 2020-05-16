//
//  OLBio14List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio14ListView: View {

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
                OBio14List()
            }
            if selected == 2{
                OBio14List2()
            }
            
        }
       .navigationBarTitle(Text("2014"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OBio14List: View {
    var body: some View {
        List(OBio14Data) { xxx in
            
            NavigationLink(destination: OBio14Detail(xxx: xxx)) {
                OBio14Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio14List2: View {
    var body: some View {
        List(OBio14Data2) { xxx2 in
            
            NavigationLink(destination: OBio14Detail2(xxx2: xxx2)) {
                OBio14Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio14Row: View {
    var xxx: OBio14

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio14Row2: View {
    var xxx2: OBio14_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio14Detail: View {
    var xxx: OBio14

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio14Detail2: View {
    var xxx2: OBio14_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
