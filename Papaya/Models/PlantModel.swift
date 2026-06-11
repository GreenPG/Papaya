//
//  PlantModel.swift
//  Papaya
//
//  Created by Apprenant76 on 04/06/2026.
//

import Foundation
import SwiftUI

struct PlantModel: Identifiable {
    var id = UUID()
    let name: String
    let picture: Image
    let sunExposure: String
    let watering: String
    let yield: String
    let tips: [Tutorial]
}


let tomato = PlantModel(name: "Tomate", picture: Image(.tomateRonde), sunExposure: "min. 6h", watering: "tous les 2 à 3 jours", yield: "3-6kg/saison", tips: tutorials)
