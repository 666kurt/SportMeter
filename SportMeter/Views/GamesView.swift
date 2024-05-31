//
//  GamesView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct GamesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Games")
            }
            .navigationTitle("Games")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .applyBackground()
        }
    }
}

#Preview {
    GamesView()
}
