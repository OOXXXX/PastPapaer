//
//  SampleYearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/3.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct SampleYearView: View {
    @State var show2019 = false
    
    
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0 ..< 3) { item in
                        Button(action: {
                                let selectionFeedback = UISelectionFeedbackGenerator()
                                  selectionFeedback.selectionChanged()
                                
                                self.show2019.toggle()
                                
                              })
                            {
                                 
                             VStack(alignment: .center) {
                                 HStack {
                                     VStack(alignment: .center) {
                                         Text("19")
                                             .modifier(FontCoustom5(size: 48))
                                             .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                             .padding(.bottom, -10)
                                     }
                                     
                                 }
                                     
                                 .frame(width: 70, height: 100)
                                 .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7384952911)))
                                 .clipShape(RoundedRectangle(cornerRadius: 20))
                                 .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
                                 .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
                             }
                            .sheet(isPresented: self.$show2019) {
                                LandmarkList()
                            }
                             .padding(.horizontal, 4)
                        }
                    }

            }
                .padding(10)
        }
            Firstcard()
                .onTapGesture {
                 self.show2019.toggle()
            }
            
            
            
            
            Spacer()
            
          
            
    }
        
        
         
    }
}




struct SampleYearView_Previews: PreviewProvider {
    static var previews: some View {
        SampleYearView()
    }
}


 
