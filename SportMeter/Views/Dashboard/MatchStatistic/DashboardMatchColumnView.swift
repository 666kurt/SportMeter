//
//  DashboardMatchColumnView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardMatchColumnView: View {
    
    let data: MatchDataModel
    let maxMatches = 8
    
    var body: some View {
        VStack {
            VStack(spacing: 2) {
                ForEach(0..<maxMatches, id: \.self) { index in
                    if index < (maxMatches - data.matches) {
                        DashboardMatchCellView()
                            .opacity(0)
                    } else {
                        DashboardMatchCellView()
                    }
                }
            }
            
            VStack(spacing: 0) {
                Text("\(data.month)")
                Text("\(data.year)")
            }
            .foregroundStyle(Color("secondText"))
            .font(.footnote)
//            .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    DashboardView()
}
