//
//  SampleYearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/3.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Box: Hashable {
    var id: Int
    let title: String

}



struct SampleYearView: View {
    
    @State var show2019 = false
    
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
                        
                    }
                    .sheet(isPresented: self.$show2019) {
                        LandmarkList()
                        }
                    
                    
                    }
                .padding(.bottom)
                }
                .padding(.horizontal, 10)
        
            Spacer()
      }
  
        
        
    }
}




struct SampleYearView_Previews: PreviewProvider {
    static var previews: some View {
        SampleYearView()
    }
}



struct BoxView: View {
    
    let box: Box
    
    
    var body: some View {
    
                VStack(alignment: .center) {
                    HStack {
                        VStack(alignment: .center) {
                            Text(box.title)
                                .modifier(FontCoustom5(size: 48))
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                .padding(.bottom, -10)
                        }
                            
                            
                            
                        .frame(width: 70, height: 100)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7384952911)))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
                        .shadow(color: Color.gray.opacity(0.2), radius: 3, x: 0, y: 2)
                    }
                    
                    .padding(.horizontal, 4)
                
            }
             //.padding()
             .padding(.top, 10)
        }
//        .padding(10)
    }

