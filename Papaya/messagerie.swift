//
//  messagerie.swift
//  Papaya
//
//  Created by Apprenant 72 on 03/06/2026.
//

import SwiftUI

struct messagerie: View {
<<<<<<< HEAD
    //faire une copie du array messages pour pouvoir appliquer un state et un append pour mettre a jour la conv
    
    @State private var comment: String = ""
    @State private var validComment: [String] = [""]
//    var user: User
    var body: some View {
        VStack {
            VStack /*(.alignment.center)*/{
//                Image()
//                ZStack{}
                //recup le profil + mise forme
            }

            VStack{
                //recup message
                ForEach(messages) {message in
                    BubbleMessage(message: message)
                }
//
            }
            
            HStack {
                TextField("Saisissez votre commentaire", text: $comment) // Var bindée car il y a de l'affichage et la modif
                Button{
                    validComment = $comment
                    
                    
                    comment = ""
                }label: {
                    Image(systemName: "paperplane.fill")
=======
    var body: some View {
        VStack{
            VStack {
//                let sender = User(userName: "Mister Courgette", userID: 2, userMembershipSince: <#Date?#>,userAdress: "blabla", userStarRating: 5, userEverySell: 12)
                ZStack{
                    
>>>>>>> e708d5d ( add commentModel et messagerie)
                }
            }
        }
    }
}

#Preview {
    messagerie()
}
