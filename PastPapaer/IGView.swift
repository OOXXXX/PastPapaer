//
//  IGView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct IGView: View {
    let generator = UINotificationFeedbackGenerator()
        
        @State var showUpdate = false
        @State var show2019 = false
        @State var isActive1 = false
        @State var isActive2 = false
        @State var isActive3 = false
        @State var isActive4 = false
        @State var isActive5 = false
        @State var isActive6 = false
        @State var isActive7 = false
        @State var isActive8 = false
        @State var isActive9 = false
        @State var isActive10 = false
        @State var tap = false
        @State var press = false
        @State var isNavigationBarHidden: Bool = false
        
        var body: some View {
       
    GeometryReader{ bounds in
        NavigationView{
            
            VStack {
        
                ScrollView(.vertical, showsIndicators: false){
        
         
               
        NavigationLink(destination: OLEng(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive1){
         Button(action: {
    //        let selectionFeedback = UISelectionFeedbackGenerator()
    //          selectionFeedback.selectionChanged()
            impact()
            
            self.isActive1 = true
            
            
          })
        {
            ButtonView(name: "Mathematics", level: "0580")
            
               
            }
        }
     
                
                
                
        NavigationLink(destination: OLMath(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive2){
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive2 = true
                
              })
            {
            
                ButtonView(name: "Economics", level: "0455")
             }
                                    
        }
        NavigationLink(destination: OLPhy(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive3){
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive3 = true
                
              })
            {

                ButtonView(name: "Physics", level: "0625")
             }
        }
                                    
        NavigationLink(destination: OLCs(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive4){
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive4 = true
                
              })
            {

                ButtonView(name: "ESL", level: "0510 & 0991")
             }
        }
            
        NavigationLink(destination: OLBio(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive5){
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive5 = true
                
              })
            {

                ButtonView(name: "Biology", level: "0610")
             }
                                    
        }
                    
        NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive6){
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive6 = true
                
              })
            {
                
                ButtonView(name: "Computer Science", level: "0460")
    
             }
            
        }
            
        NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive7){
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive7 = true
                
              })
            {
                
                ButtonView(name: "Geography", level: "0478")
                
                
             }
            
        }
        
        NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive8){
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive8 = true
                
              })
            {
                
                ButtonView(name: "History", level: "0470")
                
                
             }
            
        }
        
        NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive9){
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.isActive9 = true
                
              })
            {
                
                ButtonView(name: "Chinese", level: "0509")
                
                
             }
            
        }
            
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 28)
              }
                
            }
            .navigationBarTitle("IGCSE")
              
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
      }
}







struct IGView_Previews: PreviewProvider {
    static var previews: some View {
        IGView()
    }
}
