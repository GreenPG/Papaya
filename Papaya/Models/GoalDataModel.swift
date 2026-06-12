//
//  GoalDataView.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import Foundation

struct GoalData: Identifiable {
    let id = UUID()
    let goal: Double
    let yield: Double
}

let goalData = GoalData(goal: 322.3, yield: 123.5)
