//
//  userModel.swift
//  Papaya
//
//  Created by Apprenant 103 on 03/06/2026.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let userName: String
<<<<<<< HEAD
<<<<<<< HEAD
    let userProfilePicture: String
//    let userMembershipSince: DateComponents
=======
    let userID: Int
    let userMembershipSince: Date?
>>>>>>> e708d5d ( add commentModel et messagerie)
=======

    let userProfilePicture: String
//    let userMembershipSince: DateComponents
>>>>>>> ea27938 (ShopCard Child View and User struct maj)
    let userAdress: String
    let userStarRating: Float
    let userEverySell: Int
}

let users: [User] = [
    User(userName: "LaBinetteDu13", userProfilePicture: "binetteAB",/* userMembershipSince: ,*/ userAdress: "17 chemin de l’amoureux des fleurs", userStarRating: 4.3, userEverySell: 42),
<<<<<<< HEAD
    User(userName: "Mister Courgette", userProfilePicture: "soilAB", userAdress: "4 rue des tourterelles", userStarRating: 3.3, userEverySell: 12),
=======
    User(userName: "Mister Courgette", userProfilePicture: "", userAdress: "4 rue des tourterelles", userStarRating: 3.3, userEverySell: 12),
>>>>>>> ea27938 (ShopCard Child View and User struct maj)
]
