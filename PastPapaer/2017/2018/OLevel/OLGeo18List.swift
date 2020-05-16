//
//  OLGeo18List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo18ListView: View {
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
                OGeo18List()
            }
            if selected == 2{
                OGeo18List2()
            }
            
        }
       .navigationBarTitle(Text("2018"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo18List: View {
    var body: some View {
        List(OGeo18Data) { xxx in
            
            NavigationLink(destination: OGeo18Detail(xxx: xxx)) {
                OGeo18Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo18List2: View {
    var body: some View {
        List(OGeo18Data2) { xxx2 in
            
            NavigationLink(destination: OGeo18Detail2(xxx2: xxx2)) {
                OGeo18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo18Row: View {
    var xxx: OGeo18

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo18Row2: View {
    var xxx2: OGeo18_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo18Detail: View {
    var xxx: OGeo18

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo18Detail2: View {
    var xxx2: OGeo18_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
