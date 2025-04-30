//
//  CustomFont.swift
//  AuthCycle
//
//  Created by Muhmmed Ahmed Abdelkhalik Elabd on 29/04/2025.
//

import Foundation
import SwiftUI

extension Font {
    static func inter(size: CGFloat) -> Font {
        return .custom("Inter-Regular", size: size)
    }
}

struct InterFontModifier: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom("Inter-Regular", size: size))
    }
}

extension View {
    func interFont(size: CGFloat) -> some View {
        self.modifier(InterFontModifier(size: size))
    }
}
