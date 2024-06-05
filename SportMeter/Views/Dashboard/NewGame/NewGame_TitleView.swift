//
//  NewGame_TitleView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 05.06.2024.
//

import SwiftUI

struct NewGame_TitleView: View {
    @Environment(\.dismiss) private var dissmiss
    var body: some View {
        HStack {
            Button(action: {
                dissmiss()
            }, label: {
                Text("Cancel")
                    .foregroundStyle(Color("buttonText"))
            })
            Spacer()
            Text("New game")
                .foregroundStyle(.white)
                .font(.system(size: 17, weight: .semibold))
            Spacer()
        }
    }
}

#Preview {
    NewGame_TitleView()
        .applyBackground()
}
