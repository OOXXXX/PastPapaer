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
    //@State private var listView = [_18LististView(), TestView()]
    
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





struct _18List_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            _18List()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
