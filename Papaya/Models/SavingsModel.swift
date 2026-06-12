//
//  Savings.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import Foundation

struct Savings: Identifiable {
    let id = UUID()
    let month: String
    let saving: Double
}

let savingList: [Savings] = [
    Savings(month: "Jan", saving: 32.4),
    Savings(month: "Fév", saving: 12.4),
    Savings(month: "Mar", saving: 2.4),
    Savings(month: "Avr", saving: 33.4),
    Savings(month: "Mai", saving: 132.4),
    Savings(month: "Jui", saving: 02.4),
    //    Savings(month: "Jui", saving: 2.4),
    //    Savings(month: "Aoû", saving: 37.4),
    //    Savings(month: "Sep", saving: 22.4),
    //    Savings(month: "Oct", saving: 12.4),
    //    Savings(month: "Nov", saving: 32.4),
    //    Savings(month: "Dec", saving: 2.4),
]
