//
//  YearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI


//struct Box: Hashable {
//    var id: Int
//    let title: String
//
//}

struct YearView: View {
    
    let boxes:[Box] = [
        Box(id: 0, title: "20"),
        Box(id: 1, title: "19"),
        Box(id: 2, title: "18"),
        Box(id: 3, title: "17"),
        Box(id: 4, title: "16"),
        Box(id: 5, title: "15"),
        Box(id: 6, title: "14"),
        Box(id: 7, title: "13"),
        Box(id: 8, title: "12"),
        Box(id: 9, title: "11"),
        Box(id: 10, title: "10"),
    ]
    
    @Binding var isNavigationBarHidden: Bool
    @State var show2019 = false
    @State var showCard = false
    @State var bottomState = CGSize.zero
    @State var show = false
    
    var body: some View {
        VStack {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        

                        ForEach(boxes, id: \.self) { box in
                            
                        Button(action: {
                            let selectionFeedback = UISelectionFeedbackGenerator()
                            selectionFeedback.selectionChanged()
                            
                            self.show2019.toggle()
                            
                        })
                        {
                            
                            BoxView(box: box)
                            }
                        //.padding(.bottom, 10)
                        }
                        .sheet(isPresented: self.$show2019) {
                            LandmarkList()
                            }
                        
                }
                    .padding(10)
                    .padding(.top, 6)
                    .padding(.bottom, -1)
                    
            }
            
            
                EnglishDocsView()
                    
             
                
                Spacer()
             
               
             
            
                
        }
        .navigationBarTitle("English")
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}



