//
//  2011L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _11L: View {
    
    @State var selected = 1
    //@State private var listView = [_11ListView(), TestView()]
    
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
                    _11ListView()
                }
                if selected == 2{
                    TestView()
                }
                
            }
           .navigationBarTitle(Text("2011"))
        }
        
    }
}




struct  _11L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _11L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

struct _11ListView: View {
    var body: some View {
        List(_11Data) { eee in
            
            NavigationLink(destination: _11D(eee: eee)) {
                _11Row(eee: eee)
            }
        }
        
    }
}

struct TestView: View {
    var body: some View {
        Text("Hello Swift")
    }
    
}
