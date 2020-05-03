//
//  YearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct YearView: View {
    @Binding var isNavigationBarHidden: Bool
    @State var show2019 = false
    
    var body: some View {
        VStack {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0 ..< 8) { item in
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
                                                 .modifier(FontCoustom5(size: 38))
                                                 .foregroundColor(Color.white)
                                                 .padding(.bottom, -10)
                                         }
                                         
                                     }
                                         
                                     .frame(width: 70, height: 70)
                                     .background(Color("background2"))
                                     .clipShape(Circle())
                                     .overlay(
                                 Circle().stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
                                 }
                                .sheet(isPresented: self.$show2019) {
                                    LandmarkList()
                                }
                                 .padding(.horizontal, 4)
                            }
                        }

                }
                    .padding(10)
                    .padding(.top, 10)
            }
                Spacer()
                
                
                
        }
        
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}

//struct YearView_Previews: PreviewProvider {
//    static var previews: some View {
//        YearView()
//    }
//}

//struct YearView_Previews: PreviewProvider {
//    static var previews: some View {
//        YearView(isNavigationBarHidden: true)
//    }
//}
