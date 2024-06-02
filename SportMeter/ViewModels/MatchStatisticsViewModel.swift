//
//  MatchStatisticsViewModel.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import Foundation


class MatchStatisticsViewModel: ObservableObject {
    @Published var matchData: [MatchDataModel] = [
        MatchDataModel(month: "Jan.", year: "2024", matches: 1),
        MatchDataModel(month: "Feb.", year: "2024", matches: 7),
        MatchDataModel(month: "Mar.", year: "2024", matches: 0),
        MatchDataModel(month: "Apr.", year: "2024", matches: 5),
        MatchDataModel(month: "May", year: "2024", matches: 6),
        MatchDataModel(month: "June", year: "2024", matches: 1),
        MatchDataModel(month: "July", year: "2024", matches: 2),
    ]
}
