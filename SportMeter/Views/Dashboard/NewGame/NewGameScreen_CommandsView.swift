//
//  NewGameScreen_CommandsView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 05.06.2024.
//

import SwiftUI

struct NewGameScreen_CommandsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Commands")
                .foregroundStyle(Color("mainText"))
                .font(.headline)
            VStack {
                CommandCell()
                Divider()
                    .background(Color("dividerColor"))
                CommandCell()
            }
            .padding()
            .background(Color("lightBG"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CommandCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Not selected")
                    .foregroundStyle(Color("notActiveText"))
                Text("First team")
                    .foregroundStyle(Color("secondText"))
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(Color("tertiaryText"))
        }
    }
}

#Preview {
    NewGameScreen_CommandsView()
        .applyBackground()
}
