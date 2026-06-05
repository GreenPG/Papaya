//
//  commentModel.swift
//  Papaya
//
//  Created by Apprenant 72 on 03/06/2026.
//

import Foundation

struct Message: Identifiable {
    let id = UUID() // nom de la variable imposé
    let content: String
    let date: String/*Date*/
<<<<<<< HEAD
    var isUser: Bool = true
=======
    let isUser: Bool = true
>>>>>>> 3961c4a (Modele message et modele bubleMessage)
    
    
    init(content: String, date: String, isUser: Bool = true) {
        self.content = content
        self.date = date
        self.isUser = isUser
    }
}
var messages = [
    Message(content: "Pouvons-nous proceder à un echange? kdjfbgvowdjbfgowjdnfgob", date: "14h22"), /*(Message.date.formatted(date: .omitted, time: .shortened))*/
    Message(content: "Je suis interessé par vos graines", date: "14h21", isUser: false),
    Message(content: "Bonjour!", date: "14h21"),
]
