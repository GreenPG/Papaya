//
//  CardMarket.swift
//  Papaya
//
//  Created by Apprenant 72 on 09/06/2026.
//

import Foundation

struct AddModel: Identifiable {
let id = UUID()
    let title: String
    let description: String
    let image: String? = nil
    let tag: String? = nil
    }

let addModels: [AddModel] = [
    AddModel(title: "Graines de courge", description: "Lorem ipsum at quid tincidunt."),
    AddModel(title: "Graines de passiflore", description: "Lorem ipsum at quid tincidunt."),
    AddModel(title: "Graines de capucine", description: "Lorem ipsum at quid tincidunt."),
    AddModel(title: "Graines de tomates", description: "Lorem ipsum at quid tincidunt"),
]

