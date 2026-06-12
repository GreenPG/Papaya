//
//  userShopInfoModel.swift
//  Papaya
//
//  Created by Apprenant 103 on 12/06/2026.
//

import Foundation

struct UserShopInfo: Identifiable {
    let id = UUID()
    var starRating: Float
    var sellCount: Int
}

var usersShopInfo: [UserShopInfo] = [
    UserShopInfo(starRating: 4.3, sellCount: 24),
    UserShopInfo(starRating: 2.2, sellCount: 0),
]
