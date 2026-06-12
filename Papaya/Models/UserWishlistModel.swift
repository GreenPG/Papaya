//
//  userWishlistModel.swift
//  Papaya
//
//  Created by Apprenant 103 on 12/06/2026.
//

import Foundation

struct UserWishlist: Identifiable {
    let id = UUID()
    let name: String
    var icon: String
}

var wishlists: [UserWishlist] = [
    UserWishlist(name: "Ail", icon: "Ail"),
    UserWishlist(name: "Butternut", icon: "butternut"),
    UserWishlist(name: "Oignon blanc", icon: "Oignon-blanc"),
    UserWishlist(name: "Oignon rouge", icon: "oignon-rouge"),
    UserWishlist(name: "Pomme de terre", icon: "patates"),
    UserWishlist(name: "Poivron rouge", icon: "poivron_rouge"),
]
