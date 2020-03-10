//
//  BlogView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct BlogView: View {
let generator = UINotificationFeedbackGenerator()
@State var showHome = true
@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
              
        ZStack {
            Image("Image")
            .resizable()
            .aspectRatio(contentMode: .fit)
                .scaleEffect(0.45)
                .offset(x: screen.width/2-50, y: screen.height/2-72)
            VStack {
                ZStack {
                    VStack {
                        VStack {
        Button(action: {
                          let impactMed = UIImpactFeedbackGenerator(style: .medium)
                          impactMed.impactOccurred()
            stopSound(sound: "Radiohead-Creep", type: "mp3")
                          self.presentationMode.wrappedValue.dismiss()
                          })
                       {
                          
                          
                           Image(systemName: "house")
                              .font(.system(size: 18, weight: .medium))
                              .frame(width: 36.0, height: 36)
                              .background(Color.white)
                              .foregroundColor(Color.black)
                              .clipShape(Circle())
                              .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 2)
                            .frame(width: screen.width, height: 45, alignment: .trailing)
                            .padding(.trailing, 27)
                            .padding(.top, 10)
                              //.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
        
                       }
                    
                            Webview(url: "https://www.ooxxxx.club")
    //                            .frame(width: screen.width,  height: screen.height-210)
                                .frame(width: screen.width)
                                //.padding(.top, 60)
                                .edgesIgnoringSafeArea(.top)
                        }
                         
    //                            .offset(x: screen.width/2-40, y: -screen.height/2-230)
    //
                    }
      
    //                .offset(x: screen.width-60, y: -screen.height/2+100)
                    
                }
    //            Image("Image")
    //            .resizable()
    //            .aspectRatio(contentMode: .fit)
    //                .offset(x: 0, y: 170)
    //           frame(width: 300, height: 200)
                
                
                Text("2020 Patrick Zhu™️")
                .modifier(FontCoustom2(size: 18))
                    //.padding(.bottom, 37)
                    //.padding(.top, 10)
                    .offset(x: 0, y: 30)
                
                Button(action: {
                self.generator.notificationOccurred(.success)
                    playSound(sound: "Radiohead-Creep", type: "mp3")
                           }) {
                    Text("")
                    .frame(width: 320, height: 60)
                 // .background(Color.black)
                            .offset(x: 0, y: -20)
                
                }
                
     
            }

            
        }
    
    }
    
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
            BlogView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
