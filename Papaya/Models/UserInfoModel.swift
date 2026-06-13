//
//  userInfoModel.swift
//  Papaya
//
//  Created by Apprenant 103 on 12/06/2026.
//

import Foundation

struct UserInfo: Identifiable {
    let id = UUID()
    var name: String
    var profilePicture: String
    //    let userMembershipSince: DateComponents
    var adress: String
}

var usersInfo: [UserInfo] = [
    UserInfo(name: "LaBinetteDu13", profilePicture: "binetteAB",/* userMembershipSince: ,*/ adress: "17 chemin de l’amoureux des fleurs"),
    UserInfo(name: "Mister Courgette", profilePicture: "matatabiCatto", adress: "4 rue des tourterelles"),
]
