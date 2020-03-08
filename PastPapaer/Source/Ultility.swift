//
//  Ultility.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI
 
let screen = UIScreen.main.bounds

func getCardWidth() -> CGFloat {
    if screen.width > 712 {
        return 712
    }
    return screen.width - 60
}

func getCardHeight() -> CGFloat {
    if screen.width > 712 {
        return 80
    }
    return 280
}

func getAngleMultiplier() -> Double {
    if screen.width > 500 {
        return 80
    } else {
        return 20
    }
}
