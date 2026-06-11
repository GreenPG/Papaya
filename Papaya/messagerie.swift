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
            VStack {
                Image(user.userProfilePicture)
                
                ZStack {}
                
                VStack {
                    //recuperation des messages
                    ForEach(validComment) { message in
                        BubbleMessage(message: message)
                    }
                }
                
                HStack {
                    TextField("Saisissez votre commentaire", text: $comment)
                    Button {
                        validComment.append(Message(content: comment, date: ""))
                        comment = ""
                    } label: {
                        Image(systemName: "paperplane.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    messagerie(user: users[0])
}
