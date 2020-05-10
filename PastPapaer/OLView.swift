//
//  OlevelEnglishView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OLView: View {
    
     
 
    let generator = UINotificationFeedbackGenerator()
    @State var showUpdate = false
    @State var show2019 = false
    @State var isActive1 = false
    @State var isActive2 = false
    @State var isActive3 = false
    @State var isActive4 = false
    @State var isActive5 = false
    @State var isActive6 = false
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
   
GeometryReader{ bounds in
    NavigationView{
        
        VStack {
            
            HStack{
                    
                 Text("PastPaper")
                     .modifier(FontCoustom7(size: 40))
                     .frame(width: bounds.size.width-50, height: 20, alignment: .leading)
                     .padding(.top)
                     .offset(x: 13, y: 0)
                         
                 Button(action: {
                     self.generator.notificationOccurred(.success)
                     self.showUpdate.toggle() }) {
                     Image(systemName: "bolt.horizontal.fill")
                         .renderingMode(.original)
                         .font(.system(size: 18, weight: .medium))
                         .frame(width: 36, height: 36)
                         .background(Color.white)
                         .clipShape(Circle())
                         .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                         .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                        .padding(.top)
                     
                     }
                     
                     .offset(x: -15, y: 0)
                     .sheet(isPresented: self.$showUpdate) {
                        BlogView()
                 }
                 
            }
        
        .frame(width: bounds.size.width, height: 35)
        .padding(.top)
        .padding(.bottom, -5)
        
         
            
  

    
   ScrollView(.vertical, showsIndicators: false){
    
     
           
    NavigationLink(destination: OLEng(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive1){
     Button(action: {
        let selectionFeedback = UISelectionFeedbackGenerator()
          selectionFeedback.selectionChanged()
        
        self.isActive1 = true
        
        
      })
    {
        ButtonView(name: "English")
          
        }
        
    }

//    .sheet(isPresented: self.$isActive) {
//        YearView()
//    }
    
            
            
            
            
            
    NavigationLink(destination: OLMath(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive2){
        Button(action: {
            let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
            
            self.isActive2 = true
            
          })
        {
        
            ButtonView(name: "Mathematics A")
         }
                                
    }
    NavigationLink(destination: OLPhy(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive3){
        Button(action: {
            let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
            
            self.isActive3 = true
            
          })
        {

            ButtonView(name: "Physics")
         }
    }
                                
    NavigationLink(destination: OLCs(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive4){
        
        Button(action: {
            let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
            
            self.isActive4 = true
            
          })
        {

            ButtonView(name: "Computer Science")
         }
    }
        
    NavigationLink(destination: OLBio(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive5){
        Button(action: {
            let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
            
            self.isActive5 = true
            
          })
        {

            ButtonView(name: "Mathematics D")
         }
                                
    }
    NavigationLink(destination: OLGeo(isNavigationBarHidden: self.$isNavigationBarHidden), isActive: self.$isActive6){
        
        Button(action: {
            let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
            
            self.isActive6 = true
            
          })
        {
            ButtonView(name: "Geography")
            
         }
    }
                                
         
         
            
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.bottom, 28)
          }
            
        }
         .navigationBarTitle("", displayMode: .inline)
         .navigationBarHidden(self.isNavigationBarHidden)
         .onAppear {
             self.isNavigationBarHidden = true
         }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
  }
}

struct Firstcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2019")
                    .modifier(FontCoustom5(size: 38))
                    .foregroundColor(Color("background2"))
                    .padding(.bottom, -10)

                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }

                Spacer()
                Image("Logo19")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
//                  Image(systemName: "play.fill")
//                      .font(.system(size: 25))

                    .frame(width: 50, height: 50)
            }
            .padding()
            Spacer()
        }
            .frame(width: screen.width-30, height: 80.0)
            // .background(Color("secondary"))
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.1), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
      }
   
  }
    

    

struct OlevelEnglishView_Previews: PreviewProvider {
static var previews: some View {
    ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
        OLView()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
       }
   }
}



struct ButtonView: View {
    
    let name: String
    
    var body: some View{
     
        
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                
            }
             
            .padding()
            Spacer()
        }
             
            .frame(maxWidth: .infinity)
            .frame(height: 80.0)
            // .background(Color("secondary"))
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.1), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding(.top)
            .padding(.horizontal)
            
    }

    
}

