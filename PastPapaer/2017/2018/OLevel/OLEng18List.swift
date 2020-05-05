//
//  2020List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _18List: View {
    
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
                    _18Listist1()
                }
                if selected == 2{
                    _18Listist2()
                }
                
            }
           .navigationBarTitle(Text("2018"))
        }
        
    }
}


struct _18Listist1: View {
    var body: some View {
        List(_18Data) { xxx in
            
            NavigationLink(destination: _18Detail(xxx: xxx)) {
                _18Row(xxx: xxx)
            }
        }
        
    }
}

struct _18Listist2: View {
    var body: some View {
        List(_18Data2) { xxx2 in
            
            NavigationLink(destination: _18Detail2(xxx2: xxx2)) {
                _18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct _18Row: View {
    var xxx: LandMar

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _18Row2: View {
    var xxx2: LandMar2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct _18Detail: View {
    var xxx: LandMar

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct _18Detail2: View {
    var xxx2: LandMar2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}











struct _18List_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS Max"], id: \.self) { deviceName in
            _18List()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
