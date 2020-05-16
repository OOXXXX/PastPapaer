//
//  OLBio17List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OBio17ListView: View {
@Environment(\.presentationMode) var presentationMode
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
                OBio17List()
            }
            if selected == 2{
                OBio17List2()
            }
            
        }
       .navigationBarTitle(Text("2017"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OBio17List: View {
    var body: some View {
        List(OBio17Data) { xxx in
            
            NavigationLink(destination: OBio17Detail(xxx: xxx)) {
                OBio17Row(xxx: xxx)
            }
        }
        
    }
}

struct OBio17List2: View {
    var body: some View {
        List(OBio17Data2) { xxx2 in
            
            NavigationLink(destination: OBio17Detail2(xxx2: xxx2)) {
                OBio17Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OBio17Row: View {
    var xxx: OBio17

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OBio17Row2: View {
    var xxx2: OBio17_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OBio17Detail: View {
    var xxx: OBio17

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OBio17Detail2: View {
    var xxx2: OBio17_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
