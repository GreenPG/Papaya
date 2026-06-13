//
//  GardenModel.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import Foundation

struct Garden: Identifiable {
    let id = UUID()
    let picture: String
    let userName: String
}

let gardens = [
    Garden(picture: "growingZucchAB", userName: "LaBinettedu13"),
    Garden(picture: "wheelBarrow", userName: "MasterCourgette"),
    Garden(picture: "heritage", userName: "EnzoLaMainVerte"),
    Garden(picture: "manishSharma", userName: "xX_KevLaTomate_Xx"),
]
