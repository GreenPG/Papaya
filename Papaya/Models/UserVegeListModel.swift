//
//  userVegeListModel.swift
//  Papaya
//
//  Created by Apprenant 103 on 12/06/2026.
//

import Foundation

struct UserVegeList: Identifiable, Hashable {
    let id = UUID()
    let name: String
    var icon: String
    var count: Int
}

var vegeLists: [UserVegeList] = [
    UserVegeList(name: "Courgette", icon: "courgette", count: 3),
    UserVegeList(name: "Chou-fleur", icon: "chou_fleur", count: 1),
    UserVegeList(name: "Fraise", icon: "fraises", count: 4),
    UserVegeList(name: "Poivron vert", icon: "poivrons_Verts", count: 2),
    UserVegeList(name: "Tomate", icon: "tomate_ronde", count: 3),
]

