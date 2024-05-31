//
//  DashboardInfoView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardInfoView: View {
    
    let infoLabel: String
    let infoValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(infoLabel)
                .font(.footnote).bold()
                .foregroundStyle(Color("secondText"))
            Text(infoValue)
                .font(.largeTitle).bold()
                .foregroundStyle(Color("notActiveText"))
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("lightBG"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    DashboardView()
}
