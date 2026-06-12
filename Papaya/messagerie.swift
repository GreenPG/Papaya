//
//  messagerie.swift
//  Papaya
//
//  Created by Apprenant 72 on 03/06/2026.
//

import SwiftUI

struct messagerie: View {
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
                HStack {
                    TextField("Saisissez votre commentaire", text: $comment) // Var bindée car il y a de l'affichage et la modif
                    Button{
                        validComment.append(Message(content: comment, date: "")) //ajout du message dans le tableau
                        comment = "" // le champ redevient vide apres la validation
                    }label: {
                        Image(systemName: "paperplane.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    messagerie(user: <#T##User#>)
}
