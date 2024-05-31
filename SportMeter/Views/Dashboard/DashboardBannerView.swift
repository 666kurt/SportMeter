//
//  DashboardBannerView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardBannerView: View {
    
    let teamName: String
    let teamScore: Int
    let bannerColor: String
    let corners: UIRectCorner
    
    var body: some View {
        VStack {
            Text(teamName)
                .font(.headline)
                .foregroundStyle(Color("tertiaryText"))
            Text("\(teamScore)")
                .font(.system(size: 60, weight: .bold))
                .foregroundStyle(Color("tertiaryText"))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(bannerColor))
        .clipShape(RoundedCornerShape(radius: 24, corners: corners))
    }
}

#Preview {
    DashboardBannerView(teamName: "Team 0", teamScore: 0, bannerColor: "secondary", corners: [.topLeft, .bottomLeft])
}
