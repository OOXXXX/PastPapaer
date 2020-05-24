//
//  IGView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct IGView: View {
@State var selected = 0
@State var showinfo = false
let generator = UINotificationFeedbackGenerator()
        
        var body: some View {
       
    GeometryReader{ bounds in
        NavigationView{
            ZStack{
            

            Color("BG1")
            ScrollView(.vertical, showsIndicators: true){
                
            VStack {
                
                Picker(selection: self.$selected, label: Text("")){
                       Text("CAIE").tag(0)
                       Text("AQA").tag(1)
                       Text("Edexcel").tag(2)
                   }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.top, 10)
                .padding(.horizontal)
                //.padding(.bottom, 5)
                
                if self.selected == 0{
                    IGCaieView()
                    .padding(.top, -12)
                }
                if self.selected == 1{
                    TextShimmerView()
                    .padding(.top, 200)
                }
                if self.selected == 2{
                    TextShimmerView()
                    .padding(.top, 200)
                }
                
        
                }
                
            }
            .navigationBarTitle("PastPaper", displayMode: .inline)
              .navigationBarItems(trailing:
                  Button(action: {
                     self.showinfo = true
                  }) {
                      Image(systemName: "waveform.path.ecg").imageScale(.large)
                         .font(.system(size: 15, weight: .semibold))
                  }
                     .sheet(isPresented: self.$showinfo) {
                         PaperInfoView()
                         
                     }
              )
            }
        }
        }
      }
}





struct IGCaieView: View {
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
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            
             
                   
            NavigationLink(destination: OLEng(), isActive: self.$isActive1){
             Button(action: {
        //        let selectionFeedback = UISelectionFeedbackGenerator()
        //          selectionFeedback.selectionChanged()
                impact()
                
                self.isActive1 = true
                
                
              })
            {
                ButtonView(name: "Mathematics", level: "hhh")
                
                   
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
                    .padding(.bottom, 62)
                    
                  }
    }
    
}

struct IGAqaView: View {
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
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            
             
                   
            NavigationLink(destination: OLEng(), isActive: self.$isActive1){
             Button(action: {
        //        let selectionFeedback = UISelectionFeedbackGenerator()
        //          selectionFeedback.selectionChanged()
                impact()
                
                self.isActive1 = true
                
                
              })
            {
                ButtonView(name: "Mathematics", level: "ggg")
                
                   
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
                    .padding(.bottom, 62)
                  }
    }
    
}

struct IGEdexcelView: View {
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
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            
             
                   
            NavigationLink(destination: OLEng(), isActive: self.$isActive1){
             Button(action: {
        //        let selectionFeedback = UISelectionFeedbackGenerator()
        //          selectionFeedback.selectionChanged()
                impact()
                
                self.isActive1 = true
                
                
              })
            {
                ButtonView(name: "Mathematics", level: "aaa")
                
                   
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
                .padding(.bottom, 62)
        }
    }
    
}



struct IGView_Previews: PreviewProvider {
    static var previews: some View {
        IGView()
    }
}
