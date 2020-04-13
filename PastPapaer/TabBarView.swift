//
//  TabBar.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

//import SwiftUI
//
//struct Topbar : View {
//    
//    @State var selected = 0
//    let generator = UINotificationFeedbackGenerator()
//     
//    
//    var body : some View{
//        
//        
//        
//        HStack{
//            
//            Button(action: {
//                let selectionFeedback = UISelectionFeedbackGenerator()
//                selectionFeedback.selectionChanged()
//                self.selected = 0
//                
//            }) {
//                
//                Image(systemName: "a.circle.fill")
//                    .resizable()
//                    .frame(width: 30, height: 30)
//                    .padding(.vertical,5)
//                    .padding(.horizontal,5)
//                    .foregroundColor(self.selected == 0 ? .pink : .gray)
//                    .background(self.selected == 0 ? Color.white : Color.clear)
//                    
//                    .clipShape(Capsule())
//                    
//            }.padding(.trailing, 3)
//            
//            
//            Button(action: {
//                let selectionFeedback = UISelectionFeedbackGenerator()
//                selectionFeedback.selectionChanged()
//                self.selected = 1
//                
//            }) {
//                
//                Image(systemName: "i.circle.fill")
//                .resizable()
//                .frame(width: 30, height: 30)
//                .padding(.vertical,5)
//                .padding(.horizontal,5)
//                .background(self.selected == 1 ? Color.white : Color.clear)
//                .foregroundColor(self.selected == 1 ? .blue : .gray)
//                .clipShape(Capsule())
//            }.padding(.trailing, 3)
//            
//            
//            Button(action: {
//                let selectionFeedback = UISelectionFeedbackGenerator()
//                selectionFeedback.selectionChanged()
//                self.selected = 2
//                
//            }) {
//                
//                Image(systemName: "o.circle.fill")
//                .resizable()
//                .frame(width: 30, height: 30)
//                .padding(.vertical,5)
//                .padding(.horizontal,5)
//                .background(self.selected == 2 ? Color.white : Color.clear)
//                .foregroundColor(self.selected == 2 ? .black : .gray)
//                .clipShape(Capsule())
//            }
//              
//            
//            }
//            
//            .padding(.horizontal, 8)
//            .padding(.vertical, 8)
//            .background(Color("Color2"))
//            .clipShape(Capsule())
//            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.1))
//    
//            .offset(x: screen.width-280)
//    }
//}
//
////struct TabBar: View {
////
////    var body: some View {
////
////        TabView {
////
////            OlevelEnglishView().tabItem {
////                Image(systemName: "greaterthan.square.fill")
////                    .font(.system(size: 25))
////
////            }
////
//////            TestLottieView().tabItem {
//////               Image(systemName: "number.square.fill")
//////                .font(.system(size: 25))
//////
//////                    }
////
//////            HomeView().tabItem {
//////                Image(systemName: "equal.square.fill")
//////                .font(.system(size: 25))
//////            }
////
////        }
////
////    }
//
//
//struct TopBar_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            Topbar(selected: 2).previewDevice("iPhone 11 Pro")
//        }
//    }
//  }
//
//
