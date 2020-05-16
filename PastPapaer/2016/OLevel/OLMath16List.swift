//
//  OLMath16List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath16ListView: View {
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
                OMath16List()
            }
            if selected == 2{
                OMath16List2()
            }
            
        }
       .navigationBarTitle(Text("2016"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath16List: View {
    var body: some View {
        List(OMath16Data) { xxx in
            
            NavigationLink(destination: OMath16Detail(xxx: xxx)) {
                OMath16Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath16List2: View {
    var body: some View {
        List(OMath16Data2) { xxx2 in
            
            NavigationLink(destination: OMath16Detail2(xxx2: xxx2)) {
                OMath16Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath16Row: View {
    var xxx: OMath16

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath16Row2: View {
    var xxx2: OMath16_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath16Detail: View {
    var xxx: OMath16

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath16Detail2: View {
    var xxx2: OMath16_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
