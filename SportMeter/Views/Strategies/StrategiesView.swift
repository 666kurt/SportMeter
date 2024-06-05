//
//  StrategiesView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct StrategiesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Strategies")
            }
            .navigationTitle("Strategies")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .applyBackground()
        }
    }
}

#Preview {
    StrategiesView()
}
