//
//  messagerie.swift
//  Papaya
//
//  Created by Apprenant 72 on 03/06/2026.
//

import SwiftUI

struct MessagerieView: View {
    
    //faire une copie du array messages pour pouvoir appliquer un state et un append pour mettre a jour la conv
    @State private var comment: String = ""
    @State private var validComment = messages
    var user: User
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            VStack {
                VStack {
                    Image(users[1].userProfilePicture)
                        .resizable() // pour redimensionner
                        .scaledToFill() // pour arrondir
                        .frame(width: 200, height: 200)
                        .clipShape(
                            UnevenRoundedRectangle(cornerRadii:
                                    .init(
                                        topLeading: 100,
                                        bottomLeading: 100,
                                        bottomTrailing: 100,
                                        topTrailing: 100
                                    )
                            )
                        )
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.greenPapaya.secondary)
                            .stroke(.black, lineWidth: 3)
                            .frame(width: 250, height: 50)
                        
                        Text(users[1].userName)
                            .font(.custom("LouisGeorgeCafe", size: 30))
                    }
                }
                .padding(40)
                ScrollViewReader { updateView in
                    ScrollView {
                        VStack {
                            //recuperation des messages
                            ForEach(validComment) { message in
                                BubbleMessage(message: message)
                            }
                        }
                    }
                    .frame(maxHeight: .infinity)
                }
                
                HStack { // TODO: extracted view cf toggle José?
                    TextField("Saisissez votre commentaire", text: $comment)
                        .textFieldStyle(.roundedBorder)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 1)
                                )
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
    MessagerieView(user: users[0])
}
