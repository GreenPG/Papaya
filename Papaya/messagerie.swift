//
//  messagerie.swift
//  Papaya
//
//  Created by Apprenant 72 on 03/06/2026.
//

import SwiftUI

struct messagerie: View {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3c19e87 ( add commentModel et messagerie)
=======
>>>>>>> b8d6943 (Modele message et modele bubleMessage)
    //faire une copie du array messages pour pouvoir appliquer un state et un append pour mettre a jour la conv
    
    @State private var comment: String = ""
    @State private var validComment = messages
    var user: User
    var body: some View {
        ZStack {
            BackgroundView()
            VStack /*(.alignment.center)*/{    //recup le profil + mise forme
                Image(user.image)
                
                                ZStack{
                
            }
            VStack{
                //recuperation des messages
                ForEach(validComment) {message in
                    BubbleMessage(message: message)
                }
<<<<<<< HEAD
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
=======
    //faire une copie du array messages pour pouvoir appliquer un state et un append pour mettre a jour la conv
    
    @State private var comment: String = ""
    @State private var validComment: [String ]= [""]
//    var user: User
>>>>>>> e380d31 (Modele message et modele bubleMessage)
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
                    
<<<<<<< HEAD
>>>>>>> e708d5d ( add commentModel et messagerie)
=======
                    
                    comment = ""
                }label: {
                    Image(systemName: "paperplane.fill")
>>>>>>> e380d31 (Modele message et modele bubleMessage)
=======
                HStack {
                    TextField("Saisissez votre commentaire", text: $comment) // Var bindée car il y a de l'affichage et la modif
                    Button{
                        validComment.append(Message(content: comment, date: "")) //ajout du message dans le tableau
                        comment = "" // le champ redevient vide apres la validation
                    }label: {
                        Image(systemName: "paperplane.fill")
                    }
<<<<<<< HEAD
>>>>>>> 004f4b6 (add shopView + ShopCard)
=======
=======
=======
    //faire une copie du array messages pour pouvoir appliquer un state et un append pour mettre a jour la conv
    
    @State private var comment: String = ""
    @State private var validComment: [String ]= [""]
//    var user: User
>>>>>>> 3961c4a (Modele message et modele bubleMessage)
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
                    
<<<<<<< HEAD
>>>>>>> 8caff06 ( add commentModel et messagerie)
<<<<<<< HEAD
>>>>>>> 3c19e87 ( add commentModel et messagerie)
=======
=======
                    
                    comment = ""
                }label: {
                    Image(systemName: "paperplane.fill")
>>>>>>> 3961c4a (Modele message et modele bubleMessage)
>>>>>>> b8d6943 (Modele message et modele bubleMessage)
                }
            }
        }
    }
}

#Preview {
<<<<<<< HEAD
    messagerie(user: <#T##User#>)
=======
    messagerie()
>>>>>>> 8caff06 ( add commentModel et messagerie)
}
