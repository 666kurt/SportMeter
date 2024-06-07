//
//  NewGameScreen.swift
//  SportMeter
//
//  Created by Максим Шишлов on 05.06.2024.
//

import SwiftUI

struct NewGameScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                NewGameScreen_CommandsView()
                Spacer()
            }
            .padding()
            .navigationTitle("New game")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancel")
                            .foregroundStyle(Color("buttonText"))
                    })
                }
            })
            .applyBackground()
            
        }
        
    }
}

#Preview {
    NewGameScreen()
}
