//
//  NewGameView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 05.06.2024.
//

import SwiftUI

struct NewGameView: View {
    
    var body: some View {
        VStack {
            NewGame_TitleView()
        }
        .padding()
        .applyBackground()
    }
}

#Preview {
    NewGameView()
}
