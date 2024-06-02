//
//  DashboardMatchStatisticsView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardMatchStatisticsView: View {
    @ObservedObject var vm: MatchStatisticsViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Match Statistics")
                .font(.headline)
                .foregroundStyle(Color("mainText"))
            HStack(alignment: .bottom, spacing: 17) {
                ForEach(vm.matchData) { match in
                    DashboardMatchColumnView(data: match)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("lightBG"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    DashboardMatchStatisticsView(vm: MatchStatisticsViewModel())
}
