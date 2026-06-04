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
    let userProfilePicture: String
//    let userMembershipSince: DateComponents
=======
    let userID: Int
    let userMembershipSince: Date?
>>>>>>> e708d5d ( add commentModel et messagerie)
    let userAdress: String
    let userStarRating: Float
    let userEverySell: Int
}

let users: [User] = [
    User(userName: "LaBinetteDu13", userProfilePicture: "binetteAB",/* userMembershipSince: ,*/ userAdress: "17 chemin de l’amoureux des fleurs", userStarRating: 4.3, userEverySell: 42),
    User(userName: "Mister Courgette", userProfilePicture: "soilAB", userAdress: "4 rue des tourterelles", userStarRating: 3.3, userEverySell: 12),
]
