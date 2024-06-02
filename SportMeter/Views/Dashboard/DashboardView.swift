//
//  DashboardView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {

                HStack(spacing: 0) {
                    DashboardBannerView(teamName: "Team 1", teamScore: 0, bannerColor: "primary", corners: [.topLeft, .bottomLeft])
                    DashboardBannerView(teamName: "Team 2", teamScore: 0, bannerColor: "secondary", corners: [.topRight, .bottomRight])
                    
                }
                .frame(height: 200)
                .overlay(alignment: .bottom) {
                    Button(action: {}, label: {
                        Text("Create game")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("mainText"))
                            .foregroundStyle(Color("mainBG"))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding()
                    })
                }
                .padding(.top)
                
                DashboardMatchStatisticsView(vm: MatchStatisticsViewModel())
                
                HStack(spacing: 12) {
                    DashboardInfoView(infoLabel: "Total games", infoValue: "0")
                    DashboardInfoView(infoLabel: "Games for the month", infoValue: "0")
                }
                
                DashboardInfoView(infoLabel: "A team with big wins", infoValue: "None")
                
                Spacer()
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .applyBackground()
            .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    DashboardView()
}
