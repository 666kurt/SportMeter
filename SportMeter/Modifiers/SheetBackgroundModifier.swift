//
//  SheetBackgroundModifier.swift
//  SportMeter
//
//  Created by Максим Шишлов on 05.06.2024.
//

import Foundation
import SwiftUI

struct SheetBackgroundModifier: ViewModifier {
    @Binding var isDimmed: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: isDimmed ? 3 : 0)
            
            if isDimmed {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
            }
        }
    }
}

extension View {
    func sheetBackground(isDimmed: Binding<Bool>) -> some View {
        self.modifier(SheetBackgroundModifier(isDimmed: isDimmed))
    }
}
