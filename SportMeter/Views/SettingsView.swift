//
//  SettingsView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Settings")
            }
            .navigationTitle("Settings")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .applyBackground()
        }
    }
}

#Preview {
    SettingsView()
}
