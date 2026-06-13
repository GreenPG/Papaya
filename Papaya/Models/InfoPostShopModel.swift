//
//  InfoPostShopModel.swift
//  Papaya
//
//  Created by Apprenant 72 on 13/06/2026.
//

import Foundation

import Foundation

struct AddModel: Identifiable {
let id = UUID()
    let title: String
    let description: String
    let image: String
    let tag: String? = nil
    var isUserInfoVisible: Bool? = false
    }

let addModels: [AddModel] = [
    AddModel(title: "Graines de courge", description: "Lorem ipsum at quid tincidunt.", image: "graines-de-courge"),
    AddModel(title: "Graines de passiflore", description: "Lorem ipsum at quid tincidunt.", image: "passiflore"),
    AddModel(title: "Graines de capucine", description: "Lorem ipsum at quid tincidunt.", image: "capucine"),
    AddModel(title: "Graines de tomates", description: "Lorem ipsum at quid tincidunt", image: "graines-de-tomate"),
]
