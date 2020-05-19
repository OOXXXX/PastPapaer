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
        Home()
    }
}


struct Topbar : View {
    
    let generator = UINotificationFeedbackGenerator()
    @Binding var selected : Int
    
    var body : some View{
        
        HStack{
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 0
                
            }) {
                
                Image(systemName: "o.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.vertical,5)
                    .padding(.horizontal,5)
                    .foregroundColor(self.selected == 0 ? .pink : .gray)
                    .background(self.selected == 0 ? Color.white : Color.clear)
                    
                    .clipShape(Capsule())
                    
            }.padding(.trailing, 3)
                 
            
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 1
                
            }) {
                
                Image(systemName: "i.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(self.selected == 1 ? Color.white : Color.clear)
                .foregroundColor(self.selected == 1 ? .blue : .gray)
                .clipShape(Capsule())
            }   .padding(.trailing, 3)
                 
            
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 2
                
            }) {
                
                Image(systemName: "a.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(self.selected == 2 ? Color.white : Color.clear)
                .foregroundColor(self.selected == 2 ? .black : .gray)
                .clipShape(Capsule())
            }
                 
            
            }
            .frame(width: 145, height: 40)
            .padding(.horizontal, 6)
            .padding(.vertical, 5)
            .background(Color("Color2"))
            .clipShape(Capsule())
            //.animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.1))
            
    
            
    }
    
}

struct SwitchView: View {
@Binding var selected : Int
    
    var body: some View {
               ZStack {
                
                Rectangle()
                
                .foregroundColor(Color("SwitchColor"))
                .frame(width: 346, height: 41)
                .blendMode(.sourceAtop)
                .clipShape(RoundedRectangle(cornerRadius: 17))
                
               
                
                Rectangle()
                .foregroundColor(Color("SwitchTopColor"))
                .frame(width: self.selected == 3 ? 46 : 72, height: 33)
                 
                //.frame(width: self.selected == 4 ? 76 : 80, height: 33)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                    .offset(x: self.selected == 0 ? -131 : 0, y: 0)
                    .offset(x: self.selected == 1 ? -54 : 0, y: 0)
                .offset(x: self.selected == 2 ? 22 : 0, y: 0)
                .offset(x: self.selected == 3 ? 79 : 0, y: 0)
                .offset(x: self.selected == 4 ? 133 : 0, y: 0)
                     
                .animation(Animation.easeInOut(duration: 0.25))
                
                
                   
                   Group {
                       HStack {
                           
                           Button("Olevel"){
                            self.selected = 0
                           }
                           .font(.system(size: 18))
                           .padding(.horizontal, 8)
                           
                           .foregroundColor(self.selected == 0 ? Color.white : Color("SwitchTextColor"))
                            
                           //.animation(Animation.easeInOut.delay(0.5))
                           
                           Button("IGCSE"){
                            self.selected = 1
                           }
                           .font(.system(size: 18))
                           .padding(.horizontal, 8)
                           //.animation(Animation.easeInOut.delay(0.5))
                           .foregroundColor(self.selected == 1 ? Color.white : Color("SwitchTextColor"))
                          
                           
                           
                           
                           Button("Alevel"){
                            self.selected = 2
                           }
//                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 2 ? Color.white : Color("SwitchTextColor"))
                           //.animation(Animation.easeInOut.delay(0.5))
                            
                            Button("IB"){
                            self.selected = 3
                           }
    //                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 3 ? Color.white : Color("SwitchTextColor"))
                        
                            Button("STEP"){
                            self.selected = 4
                           }
    //                           .font(.custom("Futura", size: 18))
                           .font(.system(size: 18))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 4 ? Color.white : Color("SwitchTextColor"))
                        
                       }
                       
                   }
        
               }
    }
}
