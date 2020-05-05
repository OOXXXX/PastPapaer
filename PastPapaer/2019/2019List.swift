//
//  OlevelList.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  LandmarkList: View {
    
    @State var selected = 1
    //@State private var listView = [LandmarkLististView(), TestView()]
    
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
                    LandmarkLististView1()
                }
                if selected == 2{
                    LandmarkLististView2()
                }
                
            }
           .navigationBarTitle(Text("xxxx"))
        }
        
    }
}




struct  LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

struct LandmarkLististView1: View {
    var body: some View {
        List(landmarkData) { landmark in
            
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
        }
        
    }
}

struct LandmarkLististView2: View {
    var body: some View {
        List(landmarkData2) { landmark2 in
            
            NavigationLink(destination: LandmarkDetail2(landmark2: landmark2)) {
                LandmarkRow2(landmark2: landmark2)
            }
        }
        
    }
}
