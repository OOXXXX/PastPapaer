//
//  OLGeo14List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo14ListView: View {
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
                OGeo14List()
            }
            if selected == 2{
                OGeo14List2()
            }
            
        }
       .navigationBarTitle(Text("2014"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo14List: View {
    var body: some View {
        List(OGeo14Data) { xxx in
            
            NavigationLink(destination: OGeo14Detail(xxx: xxx)) {
                OGeo14Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo14List2: View {
    var body: some View {
        List(OGeo14Data2) { xxx2 in
            
            NavigationLink(destination: OGeo14Detail2(xxx2: xxx2)) {
                OGeo14Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo14Row: View {
    var xxx: OGeo14

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo14Row2: View {
    var xxx2: OGeo14_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo14Detail: View {
    var xxx: OGeo14

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo14Detail2: View {
    var xxx2: OGeo14_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
