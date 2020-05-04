//
//  TestButtonView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OLEng: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("English")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLMath: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Mathematics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLPhy: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Physics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLCs: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Computer Science")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLBio: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Biology")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLGeo: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            YearNumberView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EnglishDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Geography")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}









struct TestButtonView_Previews: PreviewProvider {
    @State static var isNavigationBarHidden: Bool = false
    
    static var previews: some View {
         
        OLEng(isNavigationBarHidden: $isNavigationBarHidden)
        
    }
}

 

struct YearRoundedButton: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
          .modifier(FontCoustom5(size: 48))
            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .padding(.bottom, -10)
            .frame(width: 70, height: 100)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
               RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 3, x: 0, y: 2)
    }
}

 

struct YearNumberView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    @State var show2019 = false
    @State var show2018 = false
    @State var show2017 = false
    @State var show2016 = false
    @State var show2015 = false
    @State var show2014 = false
    @State var show2013 = false
    @State var show2012 = false
    @State var show2011 = false
    @State var show2010 = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button("19") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2019.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2019) {
                        LandmarkList()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        _18List()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        _17List()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        _16L()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        _15L()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        _14L()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
                }
                    
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
        }
    }
}
