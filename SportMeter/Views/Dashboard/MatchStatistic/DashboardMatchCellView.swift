//
//  DashboardMatchCellView.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import SwiftUI

struct DashboardMatchCellView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 4)
            .foregroundStyle(Color("buttonText"))
            .frame(width: 28, height: 10)
    }
}

#Preview {
    DashboardMatchCellView()
}
