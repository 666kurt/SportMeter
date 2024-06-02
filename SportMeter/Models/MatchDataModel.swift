//
//  MatchDataModel.swift
//  SportMeter
//
//  Created by Максим Шишлов on 31.05.2024.
//

import Foundation

struct MatchDataModel: Identifiable {
    let id = UUID().uuidString
    let month: String
    let year: String
    let matches: Int
}
