//
//  Home.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/4/13.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Home: View {
        @State var selected = 0
        
        var body: some View {
            
            ZStack {
                if self.selected == 0{
                    OLView()
                }
                if self.selected == 1{
                    IGView()
                     
                }
                if self.selected == 2{
                    ALView()
                     
                }
                if self.selected == 3{
                    IBView()
                     
                }
                if self.selected == 4{
                    STEPView()
                     
                }
 
                VStack {
                    Text(" ")
                    
                    Spacer()
                    SwitchView(selected: self.$selected)
                    .padding(.bottom, 10)
                }
 
        }
           
    }
    
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            Home()
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}

 


struct SwitchView: View {
@Binding var selected : Int
    
    var body: some View {
               ZStack {
                
                Rectangle()
                
                .foregroundColor(Color("SwitchColor"))
                .frame(width: 343, height: 40)
                .blendMode(.sourceAtop)
                .clipShape(RoundedRectangle(cornerRadius: 17))
                
               
                
                Rectangle()
                .foregroundColor(Color("SwitchTopColor"))
                .frame(width: self.selected == 3 || self.selected == 4 ? 63 : 70, height: 31)
                 

                //.frame(width: self.selected == 4 ? 76 : 80, height: 33)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
                .cornerRadius(16)
                    .offset(x: self.selected == 0 ? -131 : 0, y: 0)
                    .offset(x: self.selected == 1 ? -62 : 0, y: 0)
                    .offset(x: self.selected == 2 ? 10 : 0, y: 0)
                    .offset(x: self.selected == 3 ? 75 : 0, y: 0)
                .offset(x: self.selected == 4 ? 135 : 0, y: 0)

                .animation(Animation.easeInOut(duration: 0.25))
//
                
                   
                   Group {
                       HStack {
                           
                           Button("Olevel"){
                            self.selected = 0
                           }
                           //.font(.system(size: 18))
                           .font(.system(size: 18, weight: .semibold))
                           //.padding(.horizontal, 8)
                           .foregroundColor(self.selected == 0 ? Color.white : Color("SwitchTextColor"))
                           .frame(width: 75, height: 32)
                           .padding(.horizontal, -6)
                           
                            
                           //.animation(Animation.easeInOut.delay(0.5))
                           
                           Button("IGCSE"){
                            self.selected = 1
                           }
                           .font(.system(size: 18, weight: .semibold))
                           //.padding(.horizontal, 8)
                           //.animation(Animation.easeInOut.delay(0.5))
                           .foregroundColor(self.selected == 1 ? Color.white : Color("SwitchTextColor"))
                           .frame(width: 75, height: 32)
                            .padding(.horizontal, -6)
                           
                           
                           Button("Alevel"){
                            self.selected = 2
                           }
//                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18, weight: .semibold))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 2 ? Color.white : Color("SwitchTextColor"))
                           //.animation(Animation.easeInOut.delay(0.5))
                           .frame(width: 75, height: 32)
                        .padding(.horizontal, -6)
                            
                            Button("IBDP"){
                            self.selected = 3
                           }
    //                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18, weight: .semibold))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 3 ? Color.white : Color("SwitchTextColor"))
                           .frame(width: 65, height: 32)
                        .padding(.horizontal, -6)
                        
                            Button("STEP"){
                            self.selected = 4
                           }
    //                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18, weight: .semibold))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 4 ? Color.white : Color("SwitchTextColor"))
                           .frame(width: 65, height: 32)
                        .padding(.horizontal, -6)
                       }
                       
                   }
        
               }
    }
}
