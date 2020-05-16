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
        
            OLEngYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EngDocsView()
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
        
            OLMathYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Add Mathematics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLPhy: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLPhyYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            PhyDocsView()
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
        
            OLCsYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            CsDocsView()
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
        
            OLBioYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            BioDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Mathematics D")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLGeo: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLGeoYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            GeoDocsView()
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

 

struct OLEngYearView: View {
    let vc = UIViewController()
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
                         .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        _18List()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        _17List()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        _16L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        _15L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        _14L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                  
                    
                    Button("10") {

                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()

                        self.show2010.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2010) {
                        _10L()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}

struct OLMathYearView: View {
    
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
                        OMath19ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OMath18ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OMath17ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OMath16ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OMath15ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OMath14ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        OMath13ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        OMath12ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        OMath11ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2010.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        OMath10ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}


struct OLPhyYearView: View {
    
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
                        OPhy19ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OPhy18ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OPhy17ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OPhy16ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OPhy15ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OPhy14ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        OPhy13ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        OPhy12ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        OPhy11ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2010.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                    
                   .sheet(isPresented: self.$show2011) {
                        OPhy10ListView()
                    }
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}

struct OLCsYearView: View {
    
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
                        OCs19ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OCs18ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OCs17ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OCs16ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OCs15ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                     
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}

struct OLBioYearView: View {
    
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
                        OBio19ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OBio18ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OBio17ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OBio16ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OBio15ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OBio14ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        OBio13ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        OBio12ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        OBio11ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2010.toggle()
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    .sheet(isPresented: self.$show2010) {
                        OBio10ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}

struct OLGeoYearView: View {
    
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
                        OGeo19ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OGeo18ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OGeo17ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OGeo16ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OGeo15ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OGeo14ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        OGeo13ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        OGeo12ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        OGeo11ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2010.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    .sheet(isPresented: self.$show2011) {
                        OGeo10ListView()
                        .modifier(DisableModalDismiss(disabled: true))
                    }
                    
                }
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
}

 
