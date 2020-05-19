//
//  ALView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ALView: View {
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
            
                        Group{
        
            NavigationLink(destination: OLEng(), isActive: self.$isActive1){
             Button(action: {
        //        let selectionFeedback = UISelectionFeedbackGenerator()
        //          selectionFeedback.selectionChanged()
                impact()
                
                self.isActive1 = true
                
                
              })
            {
                ButtonView(name: "Mathematics", level: "9709")
                
                   
                }
            }
         
                    
                    
                    
            NavigationLink(destination: OLMath(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive2){
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive2 = true
                    
                  })
                {
                
                    ButtonView(name: "Economics", level: "9708")
                 }
                                        
            }
            NavigationLink(destination: OLPhy(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive3){
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive3 = true
                    
                  })
                {

                    ButtonView(name: "Physics", level: "9702")
                 }
            }
                                        
            NavigationLink(destination: OLCs(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive4){
                
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive4 = true
                    
                  })
                {

                    ButtonView(name: "Further Maths", level: "9231")
                 }
            }
                
            NavigationLink(destination: OLBio(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive5){
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive5 = true
                    
                  })
                {

                    ButtonView(name: "Biology", level: "9700")
                 }
                                        
            }
                        
            NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive6){
                
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive6 = true
                    
                  })
                {
                    
                    ButtonView(name: "Geography", level: "9696")
        
                 }
                
            }
                
            NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive7){
                
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive7 = true
                    
                  })
                {
                    
                    ButtonView(name: "Computer Science", level: "9608")
                    
                    
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
                    
                    ButtonView(name: "Psychology", level: "9990")
                    
                    
                 }
                
            }
                
            NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive9){
                
                Button(action: {
                    let selectionFeedback = UISelectionFeedbackGenerator()
                      selectionFeedback.selectionChanged()
                    
                    self.isActive9 = true
                    
                  })
                {
                    
                    ButtonView(name: "Chinese", level: "9715")
                    
                    
                 }
                
            
        
             
                
            }
        }
             
                
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 28)
                  }
                    
                }
                .navigationBarTitle("PastPaper", displayMode: .inline)
            }
              
            
             
        }
      }
  
}


struct ALView_Previews: PreviewProvider {
    static var previews: some View {
        ALView()
    }
}
