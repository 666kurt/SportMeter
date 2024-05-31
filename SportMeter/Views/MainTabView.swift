//
//  MainTabView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

// MARK: - Screens Enum
enum Screens: String {
    case dashboard
    case games
    case strategies
    case settings
}

// MARK: - MainTabView
struct MainTabView: View {
    
    @State private var selectedTab = Screens.dashboard
    
    var body: some View {
        TabView(selection: $selectedTab) {
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "chart.pie.fill")
                }
                .tag(Screens.dashboard)
            GamesView()
                .tabItem {
                    Label("Games", systemImage: "figure.australian.football")
                }
                .tag(Screens.games)
            StrategiesView()
                .tabItem {
                    Label("Strategies", systemImage: "sportscourt.fill")
                }
                .tag(Screens.strategies)
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag(Screens.settings)

        }
        .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            // Цвет фона таббара
            appearance.backgroundColor = UIColor(named: "secondaryBG")
            
            // Цвет фона неактивных вкладок
            appearance.stackedLayoutAppearance.normal.iconColor = UIColor(named: "tertiaryText")
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(named: "tertiaryText") ?? UIColor.gray]
            
            UITabBar.appearance().standardAppearance = appearance
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

#Preview {
    MainTabView()
}
