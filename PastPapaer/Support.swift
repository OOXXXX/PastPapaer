//
//  Modifiers.swift
//  Sample-card
//
//  Created by Rhapsody on 2020/3/3.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI
import Foundation

struct DoubleRadiusShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
    }
}

struct FontCoustom: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("Oxygen-Bold", size: size))
    }
}

struct FontCoustom2: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("UbuntuCondensed-Regular", size: size))
    }
}

struct FontCoustom3: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("RobotoMono-Regular", size: size))
    }
}

struct FontCoustom4: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("RobotoMono-Bold", size: size))
    }
}

struct FontCoustom5: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("Teko-Medium", size: size))
    }
}

struct FontCoustom6: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("AmaticSC-Bold", size: size))
    }
}

struct FontCoustom7: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("Girassol-Regular", size: size))
    }
}

struct TouchGestureViewModifier: ViewModifier {
    let touchBegan: () -> Void
    let touchEnd: (Bool) -> Void

    @State private var hasBegun = false
    @State private var hasEnded = false

    private func isTooFar(_ translation: CGSize) -> Bool {
        let distance = sqrt(pow(translation.width, 2) + pow(translation.height, 2))
        return distance >= 20.0
    }

    func body(content: Content) -> some View {
        content.gesture(DragGesture(minimumDistance: 0)
                .onChanged { event in
                    guard !self.hasEnded else { return }

                    if self.hasBegun == false {
                        self.hasBegun = true
                        self.touchBegan()
                    } else if self.isTooFar(event.translation) {
                        self.hasEnded = true
                        self.touchEnd(false)
                    }
                }
                .onEnded { event in
                    if !self.hasEnded {
                        let success = !self.isTooFar(event.translation)
                        self.touchEnd(success)
                    }
                    self.hasBegun = false
                    self.hasEnded = false
                })
    }
}

extension View {
    func onTouchGesture(touchBegan: @escaping () -> Void = {},
                        touchEnd: @escaping (Bool) -> Void = { _ in }) -> some View {
        modifier(TouchGestureViewModifier(touchBegan: touchBegan, touchEnd: touchEnd))
    }
}

extension Color {

    static var background: Color { Color("Clockbackground") }
    static var flipBackground: Color { Color("flip_background") }
    static var separator: Color { Color("separator") }
    static var textColor: Color { Color("text_color") }

}



extension DateFormatter {

    static var timeFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HHmmss"
        return formatter
    }

}

